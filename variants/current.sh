#!/usr/bin/env bash
set -euo pipefail

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
if [[ -f "$root/.benchmark-variant" ]]; then
  cat "$root/.benchmark-variant"
else
  echo "No variant applied"
  exit 1
fi
