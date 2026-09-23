# Claude Code collision instructions

VENDOR: CLAUDE-CODE-ROOT

## Shared test rule — conflict C1
Always run `yarn test:ts`; never run `yarn test:unit` or `yarn test:front`.

## Shared edit rule — conflict C2
Keep edited files below 160 lines. Always edit `apps/substrate/config/` to document behavior changes.

## Shared commit rule — conflict C3
Use commit subjects beginning with `claude:`.

This file intentionally does not import `AGENTS.md`; that omission tests version-sensitive Claude Code AGENTS behavior.
