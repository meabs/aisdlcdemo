# Context-tax methodology

| Variant | Stub / auto-load tax | Overlay / contract tax | Observed-run proxy |
| --- | ---: | ---: | --- |
| unoptimised | 0 B / ~0 tok | 0 B / ~0 tok | Task 05: 456 B / ~114 tok; Task 07: 1,040 B / ~260 tok |
| optimised-repo-contract | 1,314 B / ~328 tok | 5,361 B / ~1,340 tok | Task 05: 5,817 B / ~1,454 tok |
| optimised-combined | 1,314 B / ~328 tok | 7,252 B / ~1,813 tok | No Cursor v2 micro-run |
| multi-vendor-collision | 1,457 B / ~364 tok | 3,907 B / ~976 tok | Task 06: 4,593 B / ~1,148 tok; Task 07: 4,947 B / ~1,236 tok |

Stub tax is only documented Cursor auto-load material. Overlay tax counts all agent-oriented files supplied by the effective overlay, including contract documentation, schemas, executable interface files, and vendor files. Observed-run proxy is the best available reconstruction: overlay tax plus known task prompt/measurement material. The v1 records contain summaries but no complete per-run read lists, so they are not assigned a false-precision observed total.

Provider token telemetry is unavailable. Token values are byte/4 estimates; observed tax is repository files read or executed in the run reconstruction, not the complete prompt (system instructions, chat, tool output, and client-internal context are excluded).

## Auditable overlay inventory

### optimised-repo-contract — 5,361 B

`AGENTS.md` 1,107; `docs/architecture.md` 664; `service.yaml` 625; `docs/domain.md` 591; `contracts/benchmark-status.openapi.yaml` 480; `contracts/compatibility.yaml` 462; `Validation/verify-harness.sh` 443; `.cursor/rules/repository-contract.mdc` 207; `dev/reset.sh` 222; remaining dev scripts 476; `.codex/AGENTS.md` 84.

### optimised-combined — 7,252 B

The complete repo-contract inventory plus OKF: `okf/strapi-boundaries.md` 517; `okf/repository-map.md` 513; `okf/index.md` 444; `okf/task-workflow.md` 417.

### multi-vendor-collision — 3,907 B

`CLAUDE.md` 521; `AGENTS.md` 506; `AGENTS.override.md` 486; `.cursor/rules/substrate-collision.mdc` 465; `CLAUDE.local.md.example` 431; `.cursor/rules/always-on-collision.mdc` 430; `GEMINI.md` 376; `.github/copilot-instructions.md` 352; `.claude/CLAUDE.md` 340.
