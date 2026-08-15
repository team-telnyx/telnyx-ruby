#!/usr/bin/env python3
import unittest
from pathlib import Path

WORKFLOW = Path(__file__).parents[1] / "workflows" / "ci.yml"


class SteepWorkerControlTest(unittest.TestCase):
    @classmethod
    def setUpClass(cls) -> None:
        cls.workflow = WORKFLOW.read_text()

    def test_control_workflow_has_no_normal_sdk_ci_or_privileged_execution(self) -> None:
        self.assertIn("name: Steep Worker Control", self.workflow)
        self.assertIn("workflow_dispatch:", self.workflow)
        self.assertIn("refs/heads/ci/steep-workers", self.workflow)
        self.assertNotIn("lint-rubocop:", self.workflow)
        self.assertNotIn("lint-steep:", self.workflow)
        self.assertNotIn("secrets.", self.workflow)
        self.assertNotIn("actions: write", self.workflow)

    def test_worker_is_exact_sha_read_only_and_four_way_sharded(self) -> None:
        self.assertIn("contents: read", self.workflow)
        self.assertIn("persist-credentials: false", self.workflow)
        self.assertIn('git rev-parse HEAD', self.workflow)
        self.assertIn("--shard-count 4", self.workflow)
        self.assertIn("run_steep_shard.py", self.workflow)
        self.assertIn("bundler-cache: false", self.workflow)

    def test_control_pr_runs_local_policy_tests_only(self) -> None:
        self.assertIn("github.event_name == 'pull_request'", self.workflow)
        self.assertIn("test_steep_worker_control.py", self.workflow)
        self.assertIn("test_run_steep_shard.py", self.workflow)
        self.assertIn("test_run_steep_shards.py", self.workflow)


if __name__ == "__main__":
    unittest.main()
