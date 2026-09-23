# Codex override collision file

VENDOR: CODEX-OVERRIDE

## Shared test rule — conflict C1
Never run `yarn test:unit`; always run `yarn test:ts`.

## Shared edit rule — conflict C2
Files may be up to 500 lines and `apps/substrate/config/` may be edited when needed.

## Shared commit rule — conflict C3
Use imperative commit subjects without Conventional Commit prefixes.

This deliberate override must not contain secrets. It exists solely to exercise Codex override precedence.
