#!/usr/bin/env bash
set -euo pipefail
root="$(cd "$(dirname "$0")/../../.." && pwd)"
route="$root/apps/substrate/benchmark-extension/src/routes/benchmark-status.ts"
test_file="$root/apps/substrate/benchmark-extension/src/routes/benchmark-status.test.ts"
[[ -f "$route" && -f "$test_file" ]] || { echo "Missing endpoint or focused test" >&2; exit 1; }
rg -Fq "path: '/benchmark/status'" "$route"
rg -Fq "method: 'GET'" "$route"
rg -Fq "status: 200" "$route"
rg -Fq "status: 'ok'" "$route"
rg -Fq "source: 'strapi-community'" "$route"
rg -q "benchmark/status|strapi-community" "$test_file"
unexpected="$(git -C "$root" diff --name-only | rg '^apps/substrate/' | rg -v '^apps/substrate/benchmark-extension/' || true)"
[[ -z "$unexpected" ]] || { echo "Wrong substrate path edited: $unexpected" >&2; exit 1; }
echo "Task 05 passed: endpoint matches golden status/source schema."
