# Planted contradictions

This overlay is deliberately unsafe for production. Every file has a `VENDOR:` marker and states a conflicting answer to the same rules.

| Conflict | Canonical `AGENTS.md` | Vendor alternatives |
| --- | --- | --- |
| C1: test command | `yarn test:unit` only | Cursor always-on: `test:front`; Cursor TypeScript rule: `test:api`; Claude root: `test:ts`; Claude nested: `test:api`; Codex override: `test:ts`; Gemini: `test:e2e`; Copilot: `test:front`. |
| C2: edit size/config | ≤300 lines; never edit `apps/substrate/config/` | Limits range from 80 to unlimited and config editing is alternately mandatory, forbidden, or conditional. |
| C3: commit subject | Conventional Commit | Each vendor claims a distinct prefix or demands no conventional prefix. |

## Interpretation boundaries

- A client only has a conflict if it actually loads two or more relevant files.
- “Loaded” does not imply a documented cross-file conflict resolver. Models may reconcile instructions unpredictably when precedence is not documented.
- `AGENTS.override.md` is intentionally a Codex collision. It is not a safe place for credentials or personal policy.
- `CLAUDE.local.md.example` is not active. It becomes a private, ignored `CLAUDE.local.md` only when copied by a developer.
