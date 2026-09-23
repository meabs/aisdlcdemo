#!/usr/bin/env bash
set -euo pipefail
root="$(cd "$(dirname "$0")/../../.." && pwd)"
variant="$(cat "$root/.benchmark-variant" 2>/dev/null || echo unoptimised)"
case "$variant" in
  unoptimised) files=() ;;
  optimised-repo-contract) files=("$root/AGENTS.md" "$root/.cursor/rules/repository-contract.mdc") ;;
  multi-vendor-collision) files=("$root/AGENTS.md" "$root/CLAUDE.md" "$root/.cursor/rules/always-on-collision.mdc") ;;
  *) files=("$root/AGENTS.md") ;;
esac
bytes=0
for file in "${files[@]}"; do [[ -f "$file" ]] && bytes=$((bytes + $(wc -c < "$file"))); done
printf 'variant=%s bytes=%s approx_tokens=%s files=%s\n' "$variant" "$bytes" "$((bytes / 4))" "${#files[@]}"
