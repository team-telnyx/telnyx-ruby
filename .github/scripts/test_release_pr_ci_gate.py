#!/usr/bin/env python3
"""Static contracts for DOT-2061 Ruby phase 2."""
import unittest
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]


class RubyReleasePRGateTests(unittest.TestCase):
    def test_classifier_owns_every_full_ci_job(self):
        ci = (ROOT / ".github/workflows/ci.yml").read_text()
        self.assertIn("name: classify production CI", ci)
        self.assertIn("classify_production_ci.py --event-path", ci)
        self.assertNotIn('>> "$GITHUB_OUTPUT"', ci)
        self.assertEqual(ci.count("needs: classify-production-ci"), 4)
        self.assertEqual(
            ci.count("if: needs.classify-production-ci.outputs.run_full == 'true'"), 4
        )
        for test in (
            "test_release_pr_auto_merge.py",
            "test_release_pr_ci_gate.py",
            "test_classify_production_ci.py",
            "test_validate_next_provenance.py",
            "test_verify_rubygems_release.py",
        ):
            self.assertIn(test, ci)

    def test_next_readiness_is_lightweight_and_fail_closed(self):
        workflow = (ROOT / ".github/workflows/next-readiness.yml").read_text()
        self.assertIn("branches: [next]", workflow)
        self.assertIn("name: next-readiness", workflow)
        self.assertIn("validate_next_provenance.py", workflow)
        self.assertIn("--expected-next", workflow)
        self.assertIn("MERGE_TOKEN: ${{ secrets.SDK_WRITE_TOKEN }}", workflow)
        self.assertIn("persist-credentials: false", workflow)
        self.assertNotIn("bundle install", workflow)
        self.assertNotIn("steep check", workflow)

    def test_release_workflow_verifies_exact_rubygems_version(self):
        workflow = (ROOT / ".github/workflows/release-please.yml").read_text()
        self.assertIn("name: Verify RubyGems release availability", workflow)
        self.assertIn("verify_rubygems_release.py", workflow)
        self.assertIn('--version "$VER"', workflow)
        self.assertNotIn("release-pr-auto-merge.yml", workflow)
        self.assertNotIn("Dispatch exact-head release PR gate", workflow)

    def test_readiness_remains_trusted_dry_run(self):
        workflow = (ROOT / ".github/workflows/release-pr-readiness.yml").read_text()
        self.assertIn("pull_request_target:", workflow)
        self.assertIn("default_branch || 'master'", workflow)
        self.assertIn("persist-credentials: false", workflow)
        self.assertIn("--expected-head", workflow)
        self.assertIn("--dry-run", workflow)
        self.assertNotIn("--merge", workflow)


if __name__ == "__main__":
    unittest.main()
