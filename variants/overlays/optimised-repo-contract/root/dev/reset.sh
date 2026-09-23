#!/usr/bin/env bash
set -euo pipefail
root="$(cd "$(dirname "$0")/.." && pwd)"
rm -rf "$root/.agent-config"
rm -f "$root/.benchmark-variant"
echo "Removed generated variant configuration; source changes were not touched."
