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

    def test_production_steep_has_one_pr_facing_check_and_dispatched_workers(self) -> None:
        self.assertNotIn("  lint-steep-shards:\n", self.workflow)
        self.assertIn("workflow_dispatch:", self.workflow)
        worker = job_block(self.workflow, "lint-steep-worker", "lint-steep-staging")
        self.assertIn("runs-on: ubuntu-latest", worker)
        self.assertIn("github.event_name == 'workflow_dispatch'", worker)
        self.assertIn("github.ref == 'refs/heads/next'", worker)
        self.assertNotIn("github.ref == 'refs/heads/master'", worker)
        self.assertIn("run_steep_shard.py", worker)
        self.assertIn("contents: read", worker)
        self.assertIn("persist-credentials: false", worker)
        self.assertNotIn("actions: write", worker)
        self.assertNotIn("secrets.", worker)
        self.assertIn('git rev-parse HEAD', worker)
        self.assertIn('TARGET_SHA', worker)
        steep = job_block(self.workflow, "lint-steep", "lint-sorbet")
        self.assertIn("name: lint (steep)", steep)
        self.assertIn("run_steep_shards.py", steep)

    def test_staging_retains_internal_large_runner(self) -> None:
        staging = job_block(self.workflow, "lint-steep-staging", "lint-steep")
        self.assertIn("runs-on: telnyx-2xlarge", staging)
        self.assertIn("github.repository == 'team-telnyx/telnyx-ruby-staging'", staging)
        self.assertIn("bundle exec steep check --jobs=4", staging)

    def test_aggregator_preserves_required_check_name_and_fails_closed(self) -> None:
        steep = job_block(self.workflow, "lint-steep", "lint-sorbet")
        self.assertIn("name: lint (steep)", steep)
        self.assertIn("runs-on: ubuntu-latest", steep)
        self.assertIn("if: always()", steep)
        self.assertIn("needs:", steep)
        self.assertIn("lint-steep-staging", steep)
        self.assertNotIn("lint-steep-signatures", steep)
        self.assertIn("actions: write", steep)
        self.assertIn("TARGET_SHA:", steep)
        self.assertIn("CORRELATION_ID:", steep)
        self.assertIn("PRIMARY_WORKER_REF:", steep)
        self.assertIn("PRIMARY_WORKER_REF: next", steep)
        self.assertIn("Run fork-safe production Steep check", steep)
        self.assertIn("exit 1", steep)

    def test_existing_rubocop_check_runs_policy_tests(self) -> None:
        rubocop = job_block(self.workflow, "lint-rubocop", "lint-steep-worker")
        self.assertIn("python3 .github/scripts/test_ci_runner_policy.py", rubocop)
        self.assertIn("python3 .github/scripts/test_run_steep_shard.py", rubocop)
        self.assertIn("python3 .github/scripts/test_run_steep_shards.py", rubocop)
        self.assertIn("name: lint (rubocop)", rubocop)

    def test_push_ci_runs_only_on_long_lived_branches(self) -> None:
        trigger = self.workflow.split("  push:\n", 1)[1].split("  pull_request:\n", 1)[0]
        self.assertNotIn("- '**'", trigger)
        for branch in ("main", "master", "next", "codegen/stl/**"):
            self.assertIn(f"- '{branch}'", trigger)

    def test_serial_production_signature_job_is_removed(self) -> None:
        self.assertNotIn("  lint-steep-signatures:\n", self.workflow)
        self.assertNotIn("--no-type-check --validate=project", self.workflow)


if __name__ == "__main__":
    unittest.main()
