#!/usr/bin/env python3
import unittest
from pathlib import Path

WORKFLOW = Path(__file__).parents[1] / "workflows" / "ci.yml"


def job_block(text: str, name: str, next_name: str) -> str:
    start = f"  {name}:\n"
    end = f"\n  {next_name}:\n"
    if text.count(start) != 1 or text.count(end) != 1:
        raise AssertionError(f"unable to isolate {name} job")
    return text.split(start, 1)[1].split(end, 1)[0]


class CiRunnerPolicyTest(unittest.TestCase):
    def setUp(self) -> None:
        self.workflow = WORKFLOW.read_text()

    def test_production_steep_has_one_pr_facing_check_and_no_skipped_worker_rows(self) -> None:
        self.assertNotIn("  lint-steep-shards:\n", self.workflow)
        self.assertNotIn("  lint-steep-worker:\n", self.workflow)
        self.assertNotIn("  lint-steep-staging:\n", self.workflow)
        self.assertNotIn("workflow_dispatch:", self.workflow)
        self.assertEqual(self.workflow.count("name: lint (steep)\n"), 1)
        steep = job_block(self.workflow, "lint-steep", "lint-sorbet")
        self.assertIn("run_steep_shards.py", steep)

    def test_aggregator_preserves_required_check_name_and_fails_closed(self) -> None:
        steep = job_block(self.workflow, "lint-steep", "lint-sorbet")
        self.assertIn("name: lint (steep)", steep)
        self.assertIn("runs-on: ubuntu-latest", steep)
        self.assertIn("if: github.event_name == 'push' || github.event_name == 'pull_request'", steep)
        self.assertNotIn("needs:", steep)
        self.assertNotIn("lint-steep-staging", steep)
        self.assertNotIn("lint-steep-signatures", steep)
        self.assertIn("actions: write", steep)
        self.assertIn("TARGET_SHA:", steep)
        self.assertIn("CORRELATION_ID:", steep)
        self.assertIn("PRIMARY_WORKER_REF:", steep)
        self.assertIn("PRIMARY_WORKER_REF: ci/steep-workers", steep)
        self.assertNotIn("ROLLOUT_FALLBACK_REF", steep)

    def test_existing_rubocop_check_runs_policy_tests(self) -> None:
        rubocop = job_block(self.workflow, "lint-rubocop", "lint-steep")
        self.assertIn("python3 .github/scripts/test_ci_runner_policy.py", rubocop)
        self.assertIn("python3 .github/scripts/test_run_steep_shard.py", rubocop)
        self.assertIn("python3 .github/scripts/test_run_steep_shards.py", rubocop)
        self.assertIn("name: lint (rubocop)", rubocop)

    def test_push_ci_preserves_existing_feature_branch_coverage(self) -> None:
        trigger = self.workflow.split("  push:\n", 1)[1].split("  pull_request:\n", 1)[0]
        self.assertIn("- '**'", trigger)
        for excluded in ("integrated/**", "stl-preview-head/**", "stl-preview-base/**", "generated", "codegen/**"):
            self.assertIn(f"- '!{excluded}'", trigger)
        self.assertIn("- 'codegen/stl/**'", trigger)

    def test_serial_production_signature_job_is_removed(self) -> None:
        self.assertNotIn("  lint-steep-signatures:\n", self.workflow)
        self.assertNotIn("--no-type-check --validate=project", self.workflow)


if __name__ == "__main__":
    unittest.main()
