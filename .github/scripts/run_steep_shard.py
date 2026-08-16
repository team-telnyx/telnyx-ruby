#!/usr/bin/env python3
"""Run one deterministic, size-balanced shard of Ruby and RBS Steep inputs."""

import argparse
import subprocess
from pathlib import Path
from typing import List, Optional, Sequence


def partition_steep_files(root: Path, shard_count: int) -> List[List[Path]]:
    if shard_count < 1:
        raise ValueError("shard count must be positive")

    root = root.resolve()
    files = []
    for directory, pattern in (("lib", "*.rb"), ("sig", "*.rbs")):
        input_root = (root / directory).resolve()
        for path in (root / directory).rglob(pattern):
            if not path.is_file():
                continue
            resolved = path.resolve()
            try:
                resolved.relative_to(input_root)
            except ValueError as error:
                raise ValueError(f"Steep input escapes {directory}/: {path}") from error
            files.append(resolved)

    if not files:
        raise ValueError("no Steep input files found under lib/ or sig/")
    if shard_count > len(files):
        raise ValueError("shard count exceeds Steep input file count")

    shards: List[List[Path]] = [[] for _ in range(shard_count)]
    totals = [0] * shard_count
    ordered = sorted(files, key=lambda path: (-path.stat().st_size, path.as_posix()))
    for path in ordered:
        index = min(range(shard_count), key=lambda item: (totals[item], item))
        shards[index].append(path)
        totals[index] += path.stat().st_size

    for shard in shards:
        shard.sort(key=lambda path: path.as_posix())
    return shards


def command_for_shard(
    root: Path, shard_index: int, shard_count: int, jobs: int
) -> List[str]:
    if not 0 <= shard_index < shard_count:
        raise ValueError("shard index must be within the shard count")
    if jobs < 1:
        raise ValueError("jobs must be positive")

    root = root.resolve()
    shards = partition_steep_files(root, shard_count)
    selected = [path.relative_to(root).as_posix() for path in shards[shard_index]]
    return ["bundle", "exec", "steep", "check", f"--jobs={jobs}", *selected]


def parse_args(argv: Optional[Sequence[str]] = None) -> argparse.Namespace:
    parser = argparse.ArgumentParser()
    parser.add_argument("--shard-index", type=int, required=True)
    parser.add_argument("--shard-count", type=int, required=True)
    parser.add_argument("--jobs", type=int, default=2)
    return parser.parse_args(argv)


def main(argv: Optional[Sequence[str]] = None) -> int:
    args = parse_args(argv)
    root = Path.cwd().resolve()
    command = command_for_shard(
        root,
        shard_index=args.shard_index,
        shard_count=args.shard_count,
        jobs=args.jobs,
    )
    selected = command[5:]
    total_bytes = sum((root / path).stat().st_size for path in selected)
    ruby_count = sum(path.endswith(".rb") for path in selected)
    rbs_count = sum(path.endswith(".rbs") for path in selected)
    print(
        f"Running Steep shard {args.shard_index + 1}/{args.shard_count}: "
        f"{ruby_count} Ruby files, {rbs_count} RBS files, "
        f"{total_bytes} input bytes",
        flush=True,
    )
    subprocess.run(command, cwd=root, check=True)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
