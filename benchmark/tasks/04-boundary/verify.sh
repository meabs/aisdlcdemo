#!/usr/bin/env bash
set -euo pipefail
root="$(cd "$(dirname "$0")/../../.." && pwd)"
submission="$root/benchmark/submissions/04-boundary.md"
[[ -f "$submission" ]] || { echo "Missing boundary submission" >&2; exit 1; }
for text in "create-build-context.ts" "packages/core/strapi" "contract" "compatib"; do
  rg -qi "$text" "$submission" || { echo "Missing required reasoning: $text" >&2; exit 1; }
done
if git -C "$root" diff --name-only | rg -q '^apps/substrate/'; then
  echo "Boundary task must not edit substrate code" >&2
  exit 1
fi
echo "Task 04 passed."
