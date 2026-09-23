#!/usr/bin/env bash
set -euo pipefail
root="$(cd "$(dirname "$0")/.." && pwd)"

for path in "$root/AGENTS.md" "$root/service.yaml" "$root/contracts/compatibility.yaml"; do
  [[ -f "$path" ]] || { echo "Missing contract file: $path" >&2; exit 1; }
done
for task in "$root"/benchmark/tasks/*; do
  [[ -x "$task/verify.sh" ]] || { echo "Missing verifier: $task" >&2; exit 1; }
done
echo "Repository contract and benchmark verifiers are present."
