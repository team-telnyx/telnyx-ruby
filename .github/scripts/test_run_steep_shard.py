#!/usr/bin/env python3
import importlib.util
import tempfile
import unittest
from pathlib import Path

SCRIPT = Path(__file__).with_name("run_steep_shard.py")


def load_module():
    spec = importlib.util.spec_from_file_location("run_steep_shard", SCRIPT)
    if spec is None or spec.loader is None:
        raise AssertionError("unable to load shard helper")
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


class RunSteepShardTest(unittest.TestCase):
    def test_shards_are_deterministic_disjoint_and_complete(self) -> None:
        module = load_module()
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            files = []
            for subdir, suffix, sizes in [
                ("lib", ".rb", [80, 30, 10, 3]),
                ("sig", ".rbs", [50, 20, 5]),
            ]:
                for index, size in enumerate(sizes):
                    path = root / subdir / f"file_{index}{suffix}"
                    path.parent.mkdir(parents=True, exist_ok=True)
                    path.write_bytes(b"x" * size)
                    files.append(path)
            (root / "lib" / "ignored.txt").write_text("not a Steep input")

            first = module.partition_steep_files(root, shard_count=3)
            second = module.partition_steep_files(root, shard_count=3)

            self.assertEqual(first, second)
            flattened = [path for shard in first for path in shard]
            self.assertCountEqual(flattened, [path.resolve() for path in files])
            self.assertEqual(len(flattened), len(set(flattened)))

    def test_greedy_partition_balances_input_bytes(self) -> None:
        module = load_module()
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            for index, size in enumerate([100, 80, 60, 40]):
                path = root / "lib" / f"file_{index}.rb"
                path.parent.mkdir(parents=True, exist_ok=True)
                path.write_bytes(b"x" * size)
            for index, size in enumerate([90, 70, 50, 30]):
                path = root / "sig" / f"file_{index}.rbs"
                path.parent.mkdir(parents=True, exist_ok=True)
                path.write_bytes(b"x" * size)

            shards = module.partition_steep_files(root, shard_count=4)
            totals = [sum(path.stat().st_size for path in shard) for shard in shards]
            self.assertLessEqual(max(totals) - min(totals), 30)

    def test_rejects_invalid_shard_arguments_and_empty_inputs(self) -> None:
        module = load_module()
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            (root / "lib").mkdir()
            (root / "sig").mkdir()
            with self.assertRaisesRegex(ValueError, "no Steep input files"):
                module.partition_steep_files(root, shard_count=2)
            with self.assertRaisesRegex(ValueError, "shard count"):
                module.partition_steep_files(root, shard_count=0)
            with self.assertRaisesRegex(ValueError, "shard index"):
                module.command_for_shard(root, shard_index=2, shard_count=2, jobs=2)

    def test_command_checks_selected_ruby_and_rbs_files(self) -> None:
        module = load_module()
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            for index, size in enumerate([40, 20]):
                path = root / "lib" / f"file_{index}.rb"
                path.parent.mkdir(parents=True, exist_ok=True)
                path.write_bytes(b"x" * size)
            for index, size in enumerate([30, 10]):
                path = root / "sig" / f"file_{index}.rbs"
                path.parent.mkdir(parents=True, exist_ok=True)
                path.write_bytes(b"x" * size)

            commands = [
                module.command_for_shard(root, shard_index=index, shard_count=2, jobs=2)
                for index in range(2)
            ]
            for command in commands:
                self.assertEqual(
                    command[:5],
                    ["bundle", "exec", "steep", "check", "--jobs=2"],
                )
                self.assertNotIn("--validate=skip", command)
                self.assertTrue(command[5:])
            selected = [path for command in commands for path in command[5:]]
            self.assertTrue(any(path.startswith("lib/") for path in selected))
            self.assertTrue(any(path.startswith("sig/") for path in selected))


if __name__ == "__main__":
    unittest.main()
