#!/usr/bin/env python3
import unittest
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
WORKFLOW = ROOT / ".github/workflows/promote-to-prod.yml"


class RubyPromotionContractTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.workflow = WORKFLOW.read_text()

    def test_release_gate_and_next_readiness_are_production_owned(self):
        expected_paths = (
            ".github/workflows/release-pr-readiness.yml",
            ".github/workflows/next-readiness.yml",
            ".github/scripts/test_release_pr_ci_gate.py",
        )
        for path in expected_paths:
            with self.subTest(path=path):
                self.assertIn(path, self.workflow)

    def test_production_scripts_are_restored_from_master(self):
        self.assertIn("git checkout origin/master -- \\", self.workflow)
        self.assertIn(".github/scripts/ \\", self.workflow)

    def test_staging_only_attestation_files_are_excluded(self):
        for path in (
            ".github/workflows/promote-to-prod.yml",
            ".github/scripts/attest-staging-promotion.py",
            ".github/scripts/test_attest_staging_promotion.py",
        ):
            with self.subTest(path=path):
                self.assertIn(f"--exclude='{path}'", self.workflow)


if __name__ == "__main__":
    unittest.main()
