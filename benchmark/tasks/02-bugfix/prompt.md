# Task 02: small bugfix with verification

`STRAPI_AI_URL` currently removes trailing slashes but preserves accidental leading/trailing whitespace. This produces invalid admin build configuration when deployment configuration includes whitespace.

In the Strapi build-context code:

1. Trim whitespace before removing trailing slashes from `STRAPI_AI_URL`.
2. Add or update the nearest focused test to cover a value with surrounding whitespace and trailing slashes.
3. Do not change the fallback URL or unrelated environment variables.

Run the task verifier. Do not install new dependencies.
