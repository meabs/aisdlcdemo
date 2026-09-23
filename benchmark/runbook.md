# Benchmark runbook

## Control variables

Use the same agent model/version, task prompt text, substrate commit, machine class, time limit, and clean starting worktree for every comparison. Change only the configuration variant.

The `multi-vendor-collision` variant is a separate stress experiment, not a normal optimised variant. Review [the standalone context report](analysis/vendor-context/report.html) before using it. Record the exact client version and any non-default instruction-discovery settings, because precedence behavior differs by vendor and release.

The vendored Strapi snapshot is large. Install dependencies once per worktree only if the task requires executable upstream tests:

```bash
cd apps/substrate
corepack enable
yarn install --immutable
```

## One run

1. Start from a clean clone or worktree at the benchmark commit.
2. Apply exactly one variant: `./variants/apply.sh optimised-okf`.
3. Start timing, then paste the selected `benchmark/tasks/<id>/prompt.md` unchanged.
4. Do not give extra architecture hints, except tool/runtime recovery information given identically to every run.
5. Stop timing after the agent reports completion. Run that task's `verify.sh`.
6. Copy one object from `results/template.jsonl`, fill its fields, append it to a local results file, and save verifier output.
7. Discard the worktree. Do not carry changes or conversation context into the next run.

## Cursor versus Codex

Run a balanced sequence, for example each task/variant pair once in Cursor and once in Codex, alternating client order. Use separate clean worktrees. Configure both clients to receive the identical prompt and to have normal repository access. Record client version and available telemetry rather than estimating tokens or cost.

For v1, compare verifier outcome first. Compare wall time, turns, tool calls, first-edit reading depth, wrong-path edits, and retries only within comparable successful runs. Qualitative observations must not override a failed verifier.

## Reset

`./variants/apply.sh unoptimised` removes all generated agent configuration. It does not revert code changes; use a fresh worktree for each run.
