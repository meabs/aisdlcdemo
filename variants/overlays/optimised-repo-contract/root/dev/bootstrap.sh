#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/../apps/substrate"
corepack enable
yarn install --immutable
