# Task 03: small feature with tests

Product wants an optional `STRAPI_ADMIN_SUPPORT_URL` environment variable exposed to the admin build so administrators can configure a support link without a code release.

Implement the smallest compatible change and add a focused test proving the value is exposed. The variable must remain absent when it is not set. Do not introduce a new configuration subsystem, package, or hard-coded default.

Run the task verifier. Do not install new dependencies.
