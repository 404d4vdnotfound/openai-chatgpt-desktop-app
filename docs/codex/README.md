# Repo Codex README

This repo uses David's global Codex v3 control plane.

## Daily commands

    cxf "task"             # fast YOLO daily driver
    cx "task"              # YOLO default
    cx yolo "task"         # YOLO explicit
    cx auto "task"         # YOLO-level automation
    cx net "task"          # YOLO-level automation/network
    cx semi "task"         # safer escape hatch
    cx plan "task"         # read-only planning
    cx handoff             # copy compact context for ChatGPT
    cx apply               # apply copied ChatGPT plan
    cx doctor              # adaptive validation
    cx index               # refresh repo index

## Each run

1. Check `git status --short --branch`.
2. Read `AGENTS.md`.
3. Read `.ai/repo-index.md` if present.
4. Use `rg` and targeted file reads instead of dumping the repo.
5. Make the smallest useful diff.
6. Run `.ai/doctor.sh`.
7. Report changed files, validation result, diff summary, rollback command, and remaining risks.

## Token-saving rules

- Do not read `.ai/runs`, `.ai/reports`, `node_modules`, `.venv`, `.pnpm-store`, `dist`, `build`, output, cache, or generated folders unless asked.
- Do not re-read unchanged files repeatedly.
- Do not paste long logs when a short failure summary is enough.
- Put durable repo behavior in `AGENTS.md`.
- Put long operational notes here.
