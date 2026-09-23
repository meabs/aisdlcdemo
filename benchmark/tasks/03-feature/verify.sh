#!/usr/bin/env bash
set -euo pipefail
root="$(cd "$(dirname "$0")/../../.." && pwd)"
source="$root/apps/substrate/packages/core/strapi/src/node/core/env.ts"

# The existing STRAPI_ADMIN_* pass-through is the intended compatibility seam.
rg -Fq "startsWith('STRAPI_ADMIN_')" "$source" || {
  echo "Expected admin environment pass-through seam is missing" >&2
  exit 1
}
rg -q "STRAPI_ADMIN_SUPPORT_URL" "$root/apps/substrate/packages/core/strapi/src" -g '*test*' || {
  echo "Missing focused support URL test" >&2
  exit 1
}
if git -C "$root" diff --name-only | rg -q '^apps/substrate/packages/core/strapi/src/node/core/env\.ts$'; then
  echo "Do not alter the generic pass-through implementation for this feature" >&2
  exit 1
fi
echo "Task 03 passed."
