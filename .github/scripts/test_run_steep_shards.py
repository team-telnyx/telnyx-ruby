#!/usr/bin/env python3
import importlib.util
import io
import tempfile
import unittest
from pathlib import Path
from unittest import mock

SCRIPT = Path(__file__).with_name("run_steep_shards.py")


def load_module():
    spec = importlib.util.spec_from_file_location("run_steep_shards", SCRIPT)
    if spec is None or spec.loader is None:
        raise AssertionError("unable to load shard orchestrator")
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


class FakeActionsApi:
    def __init__(self):
        self.dispatched = []
        self.cancelled = []

    def dispatch(self, ref, inputs):
        self.dispatched.append((ref, inputs.copy()))

    def find_runs(self, correlation_id):
        return [
            {
                "id": 100 + shard,
                "name": f"Steep worker {correlation_id} · shard {shard}",
                "html_url": f"https://example.test/runs/{100 + shard}",
                "status": "completed",
                "conclusion": "success",
                "run_started_at": "2026-08-15T00:00:00Z",
                "updated_at": "2026-08-15T00:01:00Z",
            }
            for shard in range(4)
        ]

    def get_run(self, run_id):
        return next(run for run in self.find_runs("123-1-" + "a" * 40) if run["id"] == run_id)

    def cancel(self, run_id):
        self.cancelled.append(run_id)


class RunSteepShardsTest(unittest.TestCase):
    def test_retries_transient_github_server_errors_with_bounded_backoff(self):
        module = load_module()
        api = module.GitHubActionsApi("https://api.github.test", "owner/repo", "token")
        transient = module.urllib.error.HTTPError(
            "https://api.github.test", 502, "Server Error", {}, io.BytesIO(b'{"message":"Server Error"}')
        )

        class Response:
            def __enter__(self):
                return self

            def __exit__(self, *_args):
                return False

            def read(self):
                return b'{"workflow_runs":[]}'

        with (
            mock.patch.object(module.urllib.request, "urlopen", side_effect=[transient, Response()]) as request,
            mock.patch.object(module.time, "sleep") as sleep,
        ):
            result = api._request("GET", "/actions/runs")

        self.assertEqual(result, {"workflow_runs": []})
        self.assertEqual(request.call_count, 2)
        sleep.assert_called_once_with(2)

    def test_does_not_retry_non_transient_github_api_errors(self):
        module = load_module()
        api = module.GitHubActionsApi("https://api.github.test", "owner/repo", "token")
        permanent = module.urllib.error.HTTPError(
            "https://api.github.test", 422, "Unprocessable", {}, io.BytesIO(b'{"message":"bad request"}')
        )
        with (
            mock.patch.object(module.urllib.request, "urlopen", side_effect=permanent) as request,
            mock.patch.object(module.time, "sleep") as sleep,
            self.assertRaises(module.ApiError),
        ):
            api._request("POST", "/actions/workflows/ci.yml/dispatches", {})

        self.assertEqual(request.call_count, 1)
        sleep.assert_not_called()

    def test_installs_handlers_so_parent_cancellation_reaches_workers(self):
        module = load_module()
        with mock.patch.object(module.signal, "signal") as install:
            module.install_signal_handlers()
        self.assertEqual(install.call_count, 2)

    def test_dispatches_four_workers_and_reports_one_successful_summary(self):
        module = load_module()
        api = FakeActionsApi()
        correlation = "123-1-" + "a" * 40
        with tempfile.TemporaryDirectory() as directory:
            summary = Path(directory) / "summary.md"
            result = module.orchestrate(
                api=api,
                worker_ref="ci/steep-workers",
                target_sha="a" * 40,
                correlation_id=correlation,
                summary_path=summary,
                poll_seconds=0,
                timeout_seconds=1,
            )

            self.assertTrue(result)
            self.assertEqual(
                [ref for ref, _ in api.dispatched], ["ci/steep-workers"] * 4
            )
            self.assertEqual(
                [inputs["shard_index"] for _, inputs in api.dispatched],
                ["0", "1", "2", "3"],
            )
            for _, inputs in api.dispatched:
                self.assertEqual(inputs["target_sha"], "a" * 40)
                self.assertEqual(inputs["correlation_id"], correlation)
            text = summary.read_text()
            self.assertIn("## Steep shards", text)
            self.assertEqual(text.count("✅"), 4)

    def test_fails_closed_when_any_worker_fails(self):
        module = load_module()

        class FailedWorkerApi(FakeActionsApi):
            def get_run(self, run_id):
                run = super().get_run(run_id).copy()
                if run_id == 102:
                    run["conclusion"] = "failure"
                return run

        api = FailedWorkerApi()
        with tempfile.TemporaryDirectory() as directory:
            summary = Path(directory) / "summary.md"
            with self.assertRaisesRegex(RuntimeError, r"\[2\]"):
                module.orchestrate(
                    api=api,
                    worker_ref="ci/steep-workers",
                    target_sha="a" * 40,
                    correlation_id="123-1-" + "a" * 40,
                    summary_path=summary,
                    poll_seconds=0,
                    timeout_seconds=1,
                )
            self.assertIn("Shard 2: ❌", summary.read_text())

    def test_timeout_cancels_discovered_workers(self):
        module = load_module()

        class HangingWorkerApi(FakeActionsApi):
            def find_runs(self, correlation_id):
                runs = super().find_runs(correlation_id)[:2]
                for run in runs:
                    run["status"] = "in_progress"
                    run["conclusion"] = None
                return runs

            def get_run(self, run_id):
                return next(
                    run
                    for run in self.find_runs("123-1-" + "a" * 40)
                    if run["id"] == run_id
                )

        api = HangingWorkerApi()
        with self.assertRaisesRegex(TimeoutError, r"\[0, 1, 2, 3\]"):
            module.orchestrate(
                api=api,
                worker_ref="ci/steep-workers",
                target_sha="a" * 40,
                correlation_id="123-1-" + "a" * 40,
                summary_path=None,
                poll_seconds=0.001,
                timeout_seconds=0.01,
            )
        self.assertEqual(api.cancelled, [100, 101])

    def test_dispatch_failure_is_fail_closed_without_untrusted_ref_fallback(self):
        module = load_module()

        class UnavailableApi(FakeActionsApi):
            def dispatch(self, ref, inputs):
                raise module.ApiError(422, "workflow_dispatch is unavailable")

        api = UnavailableApi()
        with self.assertRaises(module.ApiError):
            module.orchestrate(
                api=api,
                worker_ref="ci/steep-workers",
                target_sha="a" * 40,
                correlation_id="123-1-" + "a" * 40,
                summary_path=None,
                poll_seconds=0,
                timeout_seconds=1,
            )
        self.assertEqual(api.dispatched, [])


if __name__ == "__main__":
    unittest.main()
