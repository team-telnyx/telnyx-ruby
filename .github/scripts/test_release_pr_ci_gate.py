#!/usr/bin/env python3
import unittest
from pathlib import Path
ROOT=Path(__file__).resolve().parents[2]
class RubyGateTests(unittest.TestCase):
 def test_phase1_duplicate_full_suites_retained(self):
  w=(ROOT/'.github/workflows/ci.yml').read_text()
  for job in ('lint-rubocop:','lint-steep:','lint-sorbet:','test:'): self.assertIn(job,w)
  self.assertNotIn('classify production CI',w)
 def test_readiness_is_trusted_and_dry_run(self):
  w=(ROOT/'.github/workflows/release-pr-readiness.yml').read_text(); self.assertIn('pull_request_target:',w); self.assertIn("github.event.repository.default_branch || 'master'",w); self.assertIn('--dry-run',w); self.assertNotIn('--merge',w)
if __name__=='__main__': unittest.main()
