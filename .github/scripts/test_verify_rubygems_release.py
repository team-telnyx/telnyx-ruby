#!/usr/bin/env python3
import unittest

from verify_rubygems_release import validate_rubygems_payload

VERSION = "5.162.0"
GOOD = {
    "number": VERSION,
    "platform": "ruby",
    "prerelease": False,
    "sha": "a" * 64,
    "metadata": {"source_code_uri": "https://github.com/team-telnyx/telnyx-ruby"},
}


class RubyGemsReleaseTests(unittest.TestCase):
    def test_exact_version_with_checksum_and_source_is_accepted(self):
        validate_rubygems_payload([GOOD], VERSION)

    def test_missing_or_ambiguous_exact_version_is_rejected(self):
        for payload in ([], [dict(GOOD, number="5.161.0")], [GOOD, GOOD]):
            with self.subTest(payload=payload), self.assertRaises(RuntimeError):
                validate_rubygems_payload(payload, VERSION)

    def test_malformed_payload_is_rejected(self):
        with self.assertRaises(RuntimeError):
            validate_rubygems_payload({}, VERSION)

    def test_missing_checksum_is_rejected(self):
        with self.assertRaises(RuntimeError):
            validate_rubygems_payload([dict(GOOD, sha="")], VERSION)

    def test_wrong_source_repository_is_rejected(self):
        record = dict(GOOD, metadata={"source_code_uri": "https://github.com/example/fork"})
        with self.assertRaises(RuntimeError):
            validate_rubygems_payload([record], VERSION)


if __name__ == "__main__":
    unittest.main()
