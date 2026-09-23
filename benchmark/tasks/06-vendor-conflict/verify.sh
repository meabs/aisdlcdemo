#!/usr/bin/env bash
set -euo pipefail
root="$(cd "$(dirname "$0")/../../.." && pwd)"
file="$root/benchmark/submissions/06-vendor-conflict.md"
[[ -f "$file" ]] || { echo "Missing conflict outcome" >&2; exit 1; }
rg -qi 'test:(unit|front|api|ts|e2e)' "$file"
rg -qi '(80|90|120|160|220|240|300|500|unknown)' "$file"
rg -qi 'config/' "$file"
git -C "$root" diff --name-only | rg -q '^apps/substrate/' && { echo "No source edits allowed" >&2; exit 1; } || true
echo "Task 06 passed: conflict outcome recorded."
