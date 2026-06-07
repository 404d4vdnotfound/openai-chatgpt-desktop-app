# AGENTS.md

No project-specific overrides. See `~/.codex/AGENTS.md` for global rules.

## Validation
Use `.codex/bin/verify.zsh` for a repo-aware validation sweep.

<!-- D4VD-GLOBAL-CODEX-START -->
## D4VD Global Codex Control Plane

This repo inherits David's global Codex rules from:

- `~/.codex/AGENTS.md`
- `~/.codex/config.toml`
- `~/.codex/*.config.toml`
- `~/.codex/d4vd/bin/*`

Repo-local shims:

- `.ai/run.sh`
- `.ai/context.sh`
- `.ai/doctor.sh`
- `.codex/config.toml`

Use:

```bash
cx plan "inspect only"
cx semi "semi-auto implementation"
cx auto "full sandboxed automation"
cx net "sandboxed automation with network"
CODEX_ALLOW_YOLO=YES cx yolo "unrestricted local automation"
```

Rules:

- Do not commit or push unless explicitly asked.
- Do not touch secrets or credentials.
- Run `.ai/doctor.sh` before claiming success after code changes.
- Prefer global fixes in `~/.codex/d4vd/` over copy-pasting repo tooling.
<!-- D4VD-GLOBAL-CODEX-END -->


<!-- D4VD-REPO-CODEX-REMINDER-START -->
## Codex reminder

This repo uses David's global Codex control plane.

Read first:
1. `~/.codex/AGENTS.md`
2. this `AGENTS.md`
3. `docs/codex/README.md` only when workflow reminders are needed

Before code/config changes:
- use `cx plan` for ambiguous work
- use `cx semi` for normal implementation
- use `cx auto` only for bounded tasks
- use `cx net` only when network is required
- use yolo only with `CODEX_ALLOW_YOLO=YES`

After changes:
- run `.ai/doctor.sh`
- show `git diff --stat`
- report rollback command
<!-- D4VD-REPO-CODEX-REMINDER-END -->

<!-- D4VD-PUSHED-GLOBAL-CODEX-START -->
## D4VD global Codex control plane

This repo is wired into David's global Codex defaults.

Use:
- `cx "task"` for YOLO/default automation.
- `cx yolo "task"` for explicit YOLO.
- `cx auto "task"` for YOLO-level automation.
- `cx net "task"` for YOLO-level automation with network.
- `cx semi "task"` for the safer escape hatch.
- `cx plan "task"` for read-only planning.
- `cx doctor` for validation.

Each run:
1. Check `git status --short --branch`.
2. Read this `AGENTS.md`.
3. Use targeted search/reads; do not dump the whole repo.
4. Run `.ai/doctor.sh` after changes.
5. Report changed files, validation, diff summary, rollback command, and risks.
<!-- D4VD-PUSHED-GLOBAL-CODEX-END -->

<!-- D4VD-CODEX-V3-REPO-START -->
## D4VD Codex v3 repo rules

This repo is wired into David's global Codex v3 control plane.

Default:
- `cx "task"` is YOLO/default automation.
- `cxf "task"` is fast YOLO with lower token/time budget.
- `cx auto "task"`, `cx net "task"`, and `cx yolo "task"` are YOLO-level automation.
- `cx plan "task"` is read-only planning.
- `cx semi "task"` is the safer escape hatch.
- `cx doctor` validates the repo.
- `cx index` refreshes `.ai/repo-index.md`.

Each run:
1. Check `git status --short --branch`.
2. Read this `AGENTS.md`.
3. Read `.ai/repo-index.md` when present.
4. Use targeted search/reads. Do not dump the whole repo.
5. Do not read `.ai/runs`, `.ai/reports`, `node_modules`, `.venv`, `.pnpm-store`, `dist`, `build`, caches, or generated output unless needed.
6. Run `.ai/doctor.sh` after changes.
7. Report changed files, validation, diff summary, rollback command, and risks.
<!-- D4VD-CODEX-V3-REPO-END -->

