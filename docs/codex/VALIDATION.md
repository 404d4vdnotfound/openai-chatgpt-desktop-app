# Validation

Default order:

1. Targeted test for the changed behavior.
2. Typecheck.
3. Lint.
4. Unit/integration tests.
5. Build.
6. E2E only when UI flow, routing, browser behavior, or cross-boundary behavior changed.

Use `.codex/bin/verify.zsh` for a repo-aware validation sweep.
