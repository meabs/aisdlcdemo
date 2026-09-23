---
title: Strapi boundaries
audience: coding-agent
scope: substrate
---

# Strapi boundaries

This repository includes the Community Edition portion of Strapi at a pinned upstream revision. `packages/core/strapi` owns server bootstrap and lifecycle. Plugins and other core packages own their own behavior and tests.

Use existing package conventions. Do not create a new root-level application or move code across packages unless the task establishes that ownership. Enterprise Edition code is intentionally absent.
