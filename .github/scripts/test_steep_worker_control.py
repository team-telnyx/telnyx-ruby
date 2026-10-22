#!/usr/bin/env python3
import unittest
from pathlib import Path

WORKFLOW = Path(__file__).parents[1] / "workflows" / "ci.yml"


class SteepWorkerControlTest(unittest.TestCase):
    @classmethod
    def setUpClass(cls) -> None:
        cls.workflow = WORKFLOW.read_text()

    def test_ruby_jobs_use_supported_hosted_image(self) -> None:
        # Inspect actual job blocks, including the conditional fork-safe path.
        import re

        jobs = re.split(r"(?m)^  ([\w-]+):\n", self.workflow.split("jobs:\n", 1)[1])
        ruby_jobs = 0
        for index in range(1, len(jobs), 2):
            name, body = jobs[index:index + 2]
            if "uses: ruby/setup-ruby@" in body:
                ruby_jobs += 1
                with self.subTest(job=name):
                    self.assertRegex(body, r"(?m)^    runs-on: ubuntu-24\.04$")
        self.assertEqual(ruby_jobs, 1)

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
