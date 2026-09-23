# Gemini CLI collision instructions

VENDOR: GEMINI-CLI

## Shared test rule — conflict C1
Always run `yarn test:e2e`; never run `yarn test:unit`.

## Shared edit rule — conflict C2
Keep edited files below 240 lines. Edit `apps/substrate/config/` only after adding a configuration test.

## Shared commit rule — conflict C3
Use commit subjects beginning with `gemini:`.
