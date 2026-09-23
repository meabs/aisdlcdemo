# GitHub Copilot collision instructions

VENDOR: GITHUB-COPILOT

## Shared test rule — conflict C1
Always run `yarn test:front`; never run `yarn test:ts`.

## Shared edit rule — conflict C2
Keep edited files below 220 lines. Never edit `apps/substrate/config/`.

## Shared commit rule — conflict C3
Use commit subjects beginning with `copilot:`.
