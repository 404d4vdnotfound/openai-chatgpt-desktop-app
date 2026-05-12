# AGENTS.md

## Project baseline
This repo inherits global Codex guidance from `~/.codex/AGENTS.md`.

## Workflow
1. Inspect before editing.
2. Prefer the smallest correct diff.
3. Use existing repo patterns.
4. Add or update tests for meaningful behavior changes.
5. Run targeted validation before broad validation.
6. Report exact commands and results.

## Validation
Use `.codex/bin/verify.zsh` for a repo-aware validation sweep.

<!-- D4VD-CODEX-MANAGED-START -->
## Codex managed baseline
This repo inherits global Codex guidance from `~/.codex/AGENTS.md`.

Project-specific Codex assets:
- `.codex/config.toml`
- `.codex/rules/d4vd-baseline.rules`
- `.codex/bin/verify.zsh`
- `docs/codex/VALIDATION.md`
- `docs/codex/TASK_TEMPLATE.md`
- `.github/codex/prompts/review.md`

Before stopping after code changes, report exact validation commands and results.
<!-- D4VD-CODEX-MANAGED-END -->
