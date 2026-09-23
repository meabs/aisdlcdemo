# Agent-Ready Repository Contract

## Purpose
Benchmark coding agents on a fixed Strapi Community Edition snapshot. The application is in `apps/substrate`; the rest of this repository is a benchmark harness.

## Read first
1. `docs/architecture.md`
2. `docs/domain.md`
3. `service.yaml`
4. The task prompt and the closest source/test files.

## Boundaries
- Keep product changes inside `apps/substrate` unless the task names harness files.
- Preserve upstream licensing and attribution.
- Use the existing package manager and test conventions. Do not add dependencies for benchmark tasks.
- Vendor-specific instruction files must only point to this contract.

## Executable interface
Run `dev/bootstrap.sh`, `dev/build.sh`, `dev/test.sh`, `dev/verify.sh`, `dev/run.sh`, or `dev/reset.sh`. Each command documents its scope and fails clearly when prerequisites are absent.

## Definition of done
Implement only the requested behavior, add or adjust the nearest focused test when applicable, run the task verifier, and report commands and results. Do not claim broad test-suite success from a focused command.
