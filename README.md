# Coding-agent repository configuration benchmark

This repository measures how coding agents perform on the same real application when only their repository knowledge and operating contract changes.

The substrate is a vendored snapshot of Strapi Community Edition, a production TypeScript/Node.js CMS monorepo. Application code lives in [`apps/substrate`](apps/substrate). The benchmark harness, tasks, and configuration variants live outside it.

## What is compared

All variants use the identical substrate and task prompts. They differ only in files that help an agent understand and operate the repository:

| Variant | Agent-facing material |
| --- | --- |
| `unoptimised` | No agent instruction files or knowledge bundle; the root README remains human onboarding. |
| `optimised-agents-md` | A focused root `AGENTS.md`. |
| `optimised-okf` | An Open Knowledge Format-style progressive-disclosure bundle. |
| `optimised-repo-contract` | The Agent-Ready Repository Contract: canonical instructions, architecture/domain docs, API contract, service manifest, executable interface, validation, and thin vendor references. |
| `optimised-combined` | Both the repository contract and the OKF bundle. |
| `multi-vendor-collision` | A deliberately contradictory multi-vendor instruction layout for context and precedence experiments; not a production configuration. |

The configurations are overlays rather than Git branches. This keeps one checked-out substrate and makes it harder to accidentally benchmark different application commits. `./variants/apply.sh <name>` is the one-command switcher.

## Quick start

```bash
./variants/apply.sh unoptimised
./variants/apply.sh optimised-combined
./variants/current.sh
```

Run a task from a clean worktree. Give its `prompt.md` verbatim to one agent, then run its verifier:

```bash
./variants/apply.sh optimised-repo-contract
# Give benchmark/tasks/02-bugfix/prompt.md to the agent.
benchmark/tasks/02-bugfix/verify.sh
```

See [benchmark/runbook.md](benchmark/runbook.md) for the complete Cursor/Codex comparison protocol and [benchmark/metrics.md](benchmark/metrics.md) for the measurement schema.

## Multi-vendor context experiment

`./variants/apply.sh multi-vendor-collision` lays out canonical, Cursor, Claude Code, Codex, Gemini CLI, and GitHub Copilot instruction files side-by-side. Every file contains marked contradictions so different loading and precedence behavior is observable. Open the standalone [vendor-context report](benchmark/analysis/vendor-context/report.html) in a browser for the loading matrix, context tax, conflict analysis, sources, and contract recommendation.

## Substrate attribution

`apps/substrate/` was copied from [strapi/strapi](https://github.com/strapi/strapi) commit `a82c2d8bab32d61eb8399f6f3b244cbcc03cca13` (retrieved 2026-09-23). It preserves upstream copyright notices and `LICENSE`.

The snapshot deliberately excludes `packages/core/admin/ee/`, which upstream licenses separately. The remaining Strapi Community Edition code is provided under the MIT Expat license in the preserved [`apps/substrate/LICENSE`](apps/substrate/LICENSE). This benchmark is independent and not endorsed by Strapi.