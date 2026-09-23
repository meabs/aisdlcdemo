#!/usr/bin/env bash
set -euo pipefail

variant="${1:-}"
root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
source_dir="$root/variants/overlays/$variant"
state_dir="$root/.agent-config"

if [[ ! -d "$source_dir" ]]; then
  echo "Usage: $0 {unoptimised|optimised-agents-md|optimised-okf|optimised-repo-contract|optimised-combined|multi-vendor-collision}" >&2
  exit 64
fi

rm -rf "$state_dir"
mkdir -p "$state_dir"
cp -a "$source_dir/." "$state_dir/"

# Canonical, generated entry points are deliberately limited to agent material.
rm -f "$root/AGENTS.md" "$root/AGENTS.override.md" "$root/CLAUDE.md" "$root/CLAUDE.local.md" "$root/CLAUDE.local.md.example" \
  "$root/GEMINI.md" "$root/.cursorrules" "$root/.windsurfrules" "$root/.clinerules"
rm -rf "$root/.cursor" "$root/.codex" "$root/.claude" "$root/okf" "$root/contracts" "$root/dev" "$root/Validation"
rm -f "$root/.github/copilot-instructions.md"
rmdir "$root/.github" 2>/dev/null || true
rm -f "$root/service.yaml" "$root/docs/architecture.md" "$root/docs/domain.md"

if [[ "$variant" == "optimised-combined" ]]; then
  cp -a "$root/variants/overlays/optimised-repo-contract/root/." "$root/"
  cp -a "$root/variants/overlays/optimised-okf/root/." "$root/"
fi
if [[ -d "$state_dir/root" ]]; then
  cp -a "$state_dir/root/." "$root/"
fi
printf '%s\n' "$variant" > "$root/.benchmark-variant"
echo "Applied $variant."
