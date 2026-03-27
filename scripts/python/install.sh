#!/usr/bin/env bash
set -euo pipefail

log() {
  printf '[python] %s\n' "$*"
}

tools=(
  "blastradius"
)

if command -v uv >/dev/null 2>&1; then
  log "Installing Python CLIs via uv tool install"
  total=${#tools[@]}
  current=0
  for tool in "${tools[@]}"; do
    current=$((current + 1))
    echo "  [$current/$total] uv tool install $tool"
    uv tool install "$tool"
  done
else
  log "uv not found; falling back to pip3"
  pip3 install blastradius
fi

log "Python CLI provisioning complete"
