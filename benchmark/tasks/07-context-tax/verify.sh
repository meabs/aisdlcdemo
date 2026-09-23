#!/usr/bin/env bash
set -euo pipefail
root="$(cd "$(dirname "$0")/../../.." && pwd)"
file="$root/benchmark/submissions/07-context-tax.md"
[[ -f "$file" ]] || { echo "Missing context-tax submission" >&2; exit 1; }
rg -qi 'bytes|tokens' "$file"
rg -qi 'AGENTS|instruction|none' "$file"
rg -qi 'approx|estimate|tokenizer' "$file"
echo "Task 07 passed: context-tax measurement recorded."
