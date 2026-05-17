#!/usr/bin/env zsh
set -euo pipefail

run_package_script() {
  local script="$1"
  local manager="$2"

  if command -v node >/dev/null 2>&1; then
    if node -e 'const fs=require("fs");const s=JSON.parse(fs.readFileSync("package.json","utf8")).scripts||{};process.exit(s[process.argv[1]]?0:1)' "$script"; then
      "$manager" run "$script"
    fi
  fi
}

if [[ -f package.json ]]; then
  manager="npm"
  if [[ -f pnpm-lock.yaml ]] && command -v pnpm >/dev/null 2>&1; then
    manager="pnpm"
  elif [[ -f yarn.lock ]] && command -v yarn >/dev/null 2>&1; then
    manager="yarn"
  fi

  run_package_script typecheck "$manager"
  run_package_script lint "$manager"
  run_package_script test "$manager"
  run_package_script build "$manager"
fi

if [[ -f pyproject.toml ]]; then
  if command -v pytest >/dev/null 2>&1; then
    pytest
  fi
fi

if [[ -f Cargo.toml ]] && command -v cargo >/dev/null 2>&1; then
  cargo test
fi

if [[ -f go.mod ]] && command -v go >/dev/null 2>&1; then
  go test ./...
fi
