# Agent instructions

## Purpose
This repository benchmarks coding agents against the vendored Strapi Community Edition substrate in `apps/substrate/`. Change application code only when a benchmark task asks for it.

## Boundaries
- Do not edit `apps/substrate/LICENSE`, upstream attribution, or the benchmark harness unless the task explicitly asks.
- Treat `apps/substrate/` as an upstream snapshot. Make the smallest change that satisfies the task.
- Do not introduce dependencies without a stated need.

## Commands
- Install: `cd apps/substrate && corepack enable && yarn install --immutable`
- Focused tests: use the closest existing package test command named in the changed package.
- Harness checks: `./Validation/verify-harness.sh` when available.

## Definition of done
The requested behavior is implemented, a focused test covers it when code changes, the relevant verifier passes, and no unrelated files changed.

## Local rules
Prefer existing Strapi patterns and tests over inventing a new abstraction. Read the relevant source and its nearby tests before editing.
