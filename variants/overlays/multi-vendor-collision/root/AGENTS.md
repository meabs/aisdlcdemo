# Canonical shared instructions

VENDOR: SHARED-CANONICAL

This file is the intended shared contract for the collision experiment.

## Shared test rule — conflict C1
Always run `yarn test:unit` from `apps/substrate`. Never use another test runner for benchmark tasks.

## Shared edit rule — conflict C2
Keep edited source files at or below 300 lines. Do not edit `apps/substrate/config/`.

## Shared commit rule — conflict C3
Use Conventional Commit messages, for example `fix(core): normalize URL`.
