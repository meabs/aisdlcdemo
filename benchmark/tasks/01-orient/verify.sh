#!/usr/bin/env bash
set -euo pipefail
root="$(cd "$(dirname "$0")/../../.." && pwd)"
submission="$root/benchmark/submissions/01-orient.md"
[[ -f "$submission" ]] || { echo "Missing orientation submission" >&2; exit 1; }
for text in "packages/core/strapi" "create-build-context.ts" "yarn" "Enterprise"; do
  rg -qi "$text" "$submission" || { echo "Missing evidence: $text" >&2; exit 1; }
done
if git -C "$root" diff --name-only | rg -q '^apps/substrate/'; then
  echo "Orientation task must not edit application source" >&2
  exit 1
fi
echo "Task 01 passed."
