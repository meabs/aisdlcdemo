---
title: Task workflow
audience: coding-agent
scope: execution
---

# Task workflow

Read one task prompt verbatim. Locate its owning package and nearest tests before editing. Make the smallest compatible change. Run the task's `verify.sh` and record the exact command result.

Do not infer requirements that are absent from the prompt. Avoid broad builds unless the task requires them; Strapi is a large monorepo.
