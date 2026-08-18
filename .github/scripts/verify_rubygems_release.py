#!/usr/bin/env python3
"""Verify that an exact Telnyx Ruby SDK version is available on RubyGems."""
from __future__ import annotations

import argparse
import json
import re
import time
import urllib.parse
import urllib.request
from typing import Any, Mapping

SHA256_RE = re.compile(r"^[0-9a-f]{64}$")


def validate_rubygems_payload(payload: Any, version: str) -> None:
    if not isinstance(payload, list):
        raise RuntimeError("malformed RubyGems payload")
    matches = [item for item in payload if isinstance(item, Mapping) and item.get("number") == version]
    if len(matches) != 1:
        raise RuntimeError("exact RubyGems version not found uniquely")
    record = matches[0]
    if record.get("platform") != "ruby" or record.get("prerelease") is not False:
        raise RuntimeError("unexpected RubyGems package shape")
    sha = record.get("sha")
    if not isinstance(sha, str) or SHA256_RE.fullmatch(sha) is None:
        raise RuntimeError("missing RubyGems artifact checksum")
    metadata = record.get("metadata")
    if not isinstance(metadata, Mapping) or metadata.get("source_code_uri") != "https://github.com/team-telnyx/telnyx-ruby":
        raise RuntimeError("unexpected RubyGems source repository")


def fetch_versions(timeout: int = 30) -> Any:
    url = "https://rubygems.org/api/v1/versions/%s.json" % urllib.parse.quote("telnyx", safe="")
    request = urllib.request.Request(url, headers={"User-Agent": "telnyx-ruby-release-verifier"})
    with urllib.request.urlopen(request, timeout=timeout) as response:
        return json.load(response)


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--version", required=True)
    parser.add_argument("--attempts", type=int, default=20)
    parser.add_argument("--delay", type=float, default=15)
    args = parser.parse_args()
    last: Exception | None = None
    for attempt in range(1, args.attempts + 1):
        try:
            validate_rubygems_payload(fetch_versions(), args.version)
            print("verified RubyGems package telnyx at %s" % args.version)
            return 0
        except Exception as exc:  # fail closed after bounded publication delay
            last = exc
            if attempt < args.attempts:
                time.sleep(args.delay)
    raise RuntimeError("RubyGems availability verification exhausted: %s" % type(last).__name__)


if __name__ == "__main__":
    raise SystemExit(main())
