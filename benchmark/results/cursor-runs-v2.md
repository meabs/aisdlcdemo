# Cursor v2 measurement slice

| Run | Variant | Result | Instruction tax |
| --- | --- | --- | --- |
| 05 API endpoint | unoptimised | Pass | 0 B / ~0 tokens |
| 05 API endpoint | optimised-repo-contract | Pass | 1,314 B / ~328 tokens |
| 06 vendor conflict | multi-vendor-collision | Pass | 1,457 B / ~364 tokens |
| 07 context micro-task | unoptimised | Pass | 0 B / ~0 tokens |
| 07 context micro-task | multi-vendor-collision | Pass | 1,457 B / ~364 tokens |
| 07 tax-only measurement | optimised-repo-contract | Measured | 1,314 B / ~328 tokens |

All task verifiers passed. Provider token telemetry was unavailable; token values are bytes/4 estimates of documented Cursor auto-loaded instruction files.
