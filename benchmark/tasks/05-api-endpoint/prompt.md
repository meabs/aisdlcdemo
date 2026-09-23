# Task 05: schema-backed API endpoint

Add a minimal Strapi-style route descriptor at `apps/substrate/benchmark-extension/src/routes/benchmark-status.ts` for `GET /benchmark/status`. It must return HTTP 200 with JSON `{ "status": "ok", "source": "strapi-community" }`.

If a live `contracts/benchmark-status.openapi.yaml` exists, treat it as the contract. Add a focused test beside the route. Do not edit existing Strapi core packages or add dependencies.
