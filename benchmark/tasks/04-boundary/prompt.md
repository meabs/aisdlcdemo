# Task 04: context-sensitive ownership decision

A request says: “When building the admin, record the effective admin and server URLs for troubleshooting.”

Do not implement this request yet. Create `benchmark/submissions/04-boundary.md` that identifies:

1. The current code path that resolves both URLs.
2. The package that owns it.
3. Why embedding this as a new client environment variable would change the public admin-build contract.
4. The smallest next step needed before implementation (including the required compatibility decision).

Use repository evidence. Do not edit application source code, add telemetry, or introduce a logging package.
