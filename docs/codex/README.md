# Repo Codex README

This repo uses David's global Codex control plane.

## Daily commands

    cx "task"             # YOLO default
    cx yolo "task"        # YOLO explicit
    cx auto "task"        # YOLO-level automation
    cx net "task"         # YOLO-level automation/network
    cx semi "task"        # safer escape hatch
    cx plan "task"        # read-only planning
    cx handoff            # copy context for ChatGPT
    cx apply              # apply copied ChatGPT plan
    cx doctor             # validate repo

## Each time

1. Check repo state with `git status --short --branch`.
2. Read `AGENTS.md`.
3. Use `rg` and targeted file reads instead of full-repo dumps.
4. Make the smallest useful diff.
5. Run `.ai/doctor.sh`.
6. Report changed files, validation result, diff summary, rollback command, and remaining risks.

## Do not waste tokens

- Do not read `.ai/runs`, `.ai/reports`, `node_modules`, `.venv`, `.pnpm-store`, build output, or caches unless asked.
- Do not re-read unchanged files repeatedly.
- Put durable rules in `AGENTS.md`; put longer reminders here.
