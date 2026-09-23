# Cursor Cloud benchmark runs

Runs used isolated detached worktrees at substrate revision `a82c2d8bab32d61eb8399f6f3b244cbcc03cca13`. Each task began from a clean worktree with its variant applied. The JSONL record is the authoritative per-run detail.

| Variant | Task | Result | Verifier | Notes |
| --- | --- | --- | --- | --- |
| unoptimised | 01-orient | Pass | `Task 01 passed.` | Submission only |
| optimised-repo-contract | 01-orient | Pass | `Task 01 passed.` | Submission only |
| unoptimised | 02-bugfix | Pass | `Task 02 passed.` | Source and nearest focused test changed |
| optimised-repo-contract | 02-bugfix | Pass | `Task 02 passed.` | Source and nearest focused test changed |
| unoptimised | 03-feature | Pass | `Task 03 passed.` | Existing generic pass-through retained; focused test added |
| optimised-repo-contract | 03-feature | Pass | `Task 03 passed.` | Existing generic pass-through retained; focused test added |
| unoptimised | 04-boundary | Pass | `Task 04 passed.` | Submission only |
| optimised-repo-contract | 04-boundary | Pass | `Task 04 passed.` | Submission only |

All eight harness verifiers passed. The upstream Strapi dependencies were not installed during these runs, so the new/changed upstream unit tests for tasks 02 and 03 were not executed. This is recorded as a limitation, not evidence that those tests passed.
