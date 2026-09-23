#!/usr/bin/env bash
set -euo pipefail
root="$(cd "$(dirname "$0")/../../.." && pwd)"
source="$root/apps/substrate/packages/core/strapi/src/node/create-build-context.ts"

rg -Fq "process.env.STRAPI_AI_URL?.trim().replace(/\\/+$/, '')" "$source" || {
  echo "STRAPI_AI_URL must trim before trailing-slash removal" >&2
  exit 1
}
rg -q "STRAPI_AI_URL" "$root/apps/substrate/packages/core/strapi/src" -g '*test*' || {
  echo "Missing focused test evidence for STRAPI_AI_URL" >&2
  exit 1
}
rg -iq "whitespace|trim|https://.*//" "$root/apps/substrate/packages/core/strapi/src" -g '*test*' || {
  echo "Missing focused test evidence for whitespace URL input" >&2
  exit 1
}
echo "Task 02 passed."
