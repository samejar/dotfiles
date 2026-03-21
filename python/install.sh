#!/usr/bin/env bash
set -euo pipefail

tools=(
  "blastradius"
)

if command -v uv >/dev/null 2>&1; then
  echo "Installing Python CLIs via uv tool install"
  for tool in "${tools[@]}"; do
    uv tool install "$tool"
  done
else
  echo "uv not found; falling back to pip3"
  pip3 install blastradius
fi
