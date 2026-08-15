#!/usr/bin/env python3
"""Dispatch and fail-closed poll four protected Steep worker runs."""

import json
import os
import re
import signal
import sys
import time
import urllib.error
import urllib.parse
import urllib.request
from datetime import datetime
from pathlib import Path
from typing import Dict, List, Optional

WORKFLOW = "ci.yml"
SHARD_COUNT = 4
SHA_RE = re.compile(r"^[0-9a-f]{40}$")
CORRELATION_RE = re.compile(r"^[0-9]+-[0-9]+-[0-9a-f]{40}$")


class ApiError(RuntimeError):
    def __init__(self, status: int, message: str):
        super().__init__(f"GitHub API returned {status}: {message}")
        self.status = status


class CancellationRequested(RuntimeError):
    pass


def install_signal_handlers() -> None:
    def cancel(signum, _frame):
        raise CancellationRequested(f"received signal {signum}")

    signal.signal(signal.SIGINT, cancel)
    signal.signal(signal.SIGTERM, cancel)


class GitHubActionsApi:
    """Minimal GitHub Actions REST boundary used by the orchestrator."""

    def __init__(self, api_url: str, repository: str, token: str):
        self.base = f"{api_url.rstrip('/')}/repos/{repository}"
        self.token = token

    def _request(self, method: str, path: str, payload=None):
        data = None if payload is None else json.dumps(payload).encode()
        request = urllib.request.Request(
            f"{self.base}{path}",
            data=data,
            method=method,
            headers={
                "Accept": "application/vnd.github+json",
                "Authorization": f"Bearer {self.token}",
                "Content-Type": "application/json",
                "X-GitHub-Api-Version": "2022-11-28",
            },
        )
        try:
            with urllib.request.urlopen(request, timeout=30) as response:
                body = response.read()
                return None if not body else json.loads(body.decode())
        except urllib.error.HTTPError as error:
            body = error.read().decode(errors="replace")
            raise ApiError(error.code, body) from error

    def dispatch(self, ref: str, inputs: Dict[str, str]) -> None:
        # Ref: https://docs.github.com/en/rest/actions/workflows#create-a-workflow-dispatch-event
        self._request(
            "POST",
            f"/actions/workflows/{WORKFLOW}/dispatches",
            {"ref": ref, "inputs": inputs},
        )

    def find_runs(self, correlation_id: str) -> List[dict]:
        # Ref: https://docs.github.com/en/rest/actions/workflow-runs#list-workflow-runs-for-a-workflow
        query = urllib.parse.urlencode({"event": "workflow_dispatch", "per_page": 100})
        result = self._request(
            "GET", f"/actions/workflows/{WORKFLOW}/runs?{query}"
        )
        prefix = f"Steep worker {correlation_id} · shard "
        return [
            run
            for run in result.get("workflow_runs", [])
            if run.get("display_title", run.get("name", "")).startswith(prefix)
        ]

    def get_run(self, run_id: int) -> dict:
        return self._request("GET", f"/actions/runs/{run_id}")

    def cancel(self, run_id: int) -> None:
        try:
            self._request("POST", f"/actions/runs/{run_id}/cancel")
        except ApiError as error:
            if error.status != 409:
                raise


def title_for(correlation_id: str, shard: int) -> str:
    return f"Steep worker {correlation_id} · shard {shard}"


def validate_inputs(target_sha: str, correlation_id: str, worker_ref: str) -> None:
    if not SHA_RE.fullmatch(target_sha):
        raise ValueError("TARGET_SHA must be a lowercase 40-character commit SHA")
    if not CORRELATION_RE.fullmatch(correlation_id):
        raise ValueError("CORRELATION_ID has an invalid shape")
    if not worker_ref or any(character.isspace() for character in worker_ref):
        raise ValueError("worker ref must be non-empty and contain no whitespace")


def duration(run: dict) -> str:
    start = run.get("run_started_at")
    end = run.get("updated_at")
    if not start or not end:
        return "n/a"
    started = datetime.fromisoformat(start.replace("Z", "+00:00"))
    finished = datetime.fromisoformat(end.replace("Z", "+00:00"))
    seconds = max(0, int((finished - started).total_seconds()))
    return f"{seconds // 60}m {seconds % 60:02d}s"


def write_summary(summary_path: Optional[Path], runs: Dict[int, dict]) -> None:
    if summary_path is None:
        return
    lines = ["## Steep shards", "", "Four GitHub-hosted workers checked the same immutable commit.", ""]
    for shard in range(SHARD_COUNT):
        run = runs[shard]
        icon = "✅" if run.get("conclusion") == "success" else "❌"
        lines.append(
            f"- Shard {shard}: {icon} [{duration(run)}]({run.get('html_url', '')})"
        )
    summary_path.write_text("\n".join(lines) + "\n")


def orchestrate(
    api,
    worker_ref: str,
    rollout_fallback_ref: str,
    target_sha: str,
    correlation_id: str,
    summary_path: Optional[Path],
    poll_seconds: float = 5,
    timeout_seconds: float = 3300,
) -> bool:
    validate_inputs(target_sha, correlation_id, worker_ref)
    dispatched_ref = worker_ref
    inputs = {
        "target_sha": target_sha,
        "shard_index": "0",
        "correlation_id": correlation_id,
    }
    try:
        api.dispatch(dispatched_ref, inputs)
    except ApiError as error:
        if error.status != 422 or not rollout_fallback_ref:
            raise
        dispatched_ref = rollout_fallback_ref
        api.dispatch(dispatched_ref, inputs)

    for shard in range(1, SHARD_COUNT):
        api.dispatch(
            dispatched_ref,
            {
                "target_sha": target_sha,
                "shard_index": str(shard),
                "correlation_id": correlation_id,
            },
        )

    deadline = time.monotonic() + timeout_seconds
    run_ids: Dict[int, int] = {}
    terminal_runs: Dict[int, dict] = {}
    try:
        while time.monotonic() < deadline:
            for run in api.find_runs(correlation_id):
                display_title = run.get("display_title", run.get("name", ""))
                for shard in range(SHARD_COUNT):
                    if display_title == title_for(correlation_id, shard):
                        existing = run_ids.get(shard)
                        if existing is not None and existing != run["id"]:
                            raise RuntimeError(f"multiple worker runs found for shard {shard}")
                        run_ids[shard] = run["id"]

            for shard, run_id in run_ids.items():
                run = api.get_run(run_id)
                if run.get("status") == "completed":
                    terminal_runs[shard] = run

            if len(terminal_runs) == SHARD_COUNT:
                write_summary(summary_path, terminal_runs)
                failed = [
                    shard
                    for shard, run in terminal_runs.items()
                    if run.get("conclusion") != "success"
                ]
                if failed:
                    raise RuntimeError(f"Steep workers failed or were cancelled: {failed}")
                return True
            time.sleep(poll_seconds)
    finally:
        if len(terminal_runs) != SHARD_COUNT:
            for shard, run_id in run_ids.items():
                if shard not in terminal_runs:
                    api.cancel(run_id)

    missing = sorted(set(range(SHARD_COUNT)) - set(terminal_runs))
    raise TimeoutError(f"Timed out waiting for Steep workers: {missing}")


def main() -> int:
    install_signal_handlers()
    required = [
        "GH_TOKEN",
        "TARGET_SHA",
        "CORRELATION_ID",
        "PRIMARY_WORKER_REF",
        "GITHUB_REPOSITORY",
        "GITHUB_API_URL",
    ]
    missing = [name for name in required if not os.environ.get(name)]
    if missing:
        raise RuntimeError(f"Missing required environment variables: {missing}")

    api = GitHubActionsApi(
        os.environ["GITHUB_API_URL"],
        os.environ["GITHUB_REPOSITORY"],
        os.environ["GH_TOKEN"],
    )
    summary = os.environ.get("GITHUB_STEP_SUMMARY")
    orchestrate(
        api=api,
        worker_ref=os.environ["PRIMARY_WORKER_REF"],
        rollout_fallback_ref=os.environ.get("ROLLOUT_FALLBACK_REF", ""),
        target_sha=os.environ["TARGET_SHA"],
        correlation_id=os.environ["CORRELATION_ID"],
        summary_path=Path(summary) if summary else None,
    )
    return 0


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (ApiError, RuntimeError, TimeoutError, ValueError) as error:
        print(f"Steep shard orchestration failed: {error}", file=sys.stderr)
        raise SystemExit(1)
