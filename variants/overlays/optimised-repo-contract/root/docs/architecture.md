# Architecture

The benchmark root contains immutable harness material and `apps/substrate`, a pinned Strapi Community Edition monorepo.

Strapi uses Yarn 4 workspaces and Nx. Its server runtime is organized around `packages/core/strapi`; capabilities such as authentication and content management live in adjacent core packages and plugins. The admin application is React-based. Tests are colocated or grouped by package and invoked through root Yarn/Nx scripts.

For benchmark changes, identify the owning package first. Follow imports from the public API inward and reuse that package's test fixture style. Do not treat this benchmark root as a Strapi package.
