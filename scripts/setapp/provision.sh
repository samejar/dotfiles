#!/usr/bin/env bash

# Provision Setapp apps via setapp-cli using the declarative AppList file.

set -euo pipefail

DOTFILES=${DOTFILES:-$HOME/.local/share/chezmoi}
SETAPP_DIR="$HOME/.setapp"
SETAPP_TARGET="$SETAPP_DIR/AppList"
INSTALLER_URL="https://raw.githubusercontent.com/maximlevey/setapp-cli/main/install.sh"

if [[ ! -f "$SETAPP_TARGET" ]]; then
  echo "Setapp AppList not found at $SETAPP_TARGET; run 'chezmoi apply' first." >&2
  exit 0
fi

if ! command -v setapp-cli >/dev/null 2>&1; then
  echo "› installing setapp-cli"
  tmp=$(mktemp)
  trap 'rm -f "$tmp"' EXIT
  curl -fsSL "$INSTALLER_URL" -o "$tmp"
  bash "$tmp"
fi

if ! command -v setapp-cli >/dev/null 2>&1; then
  echo "setapp-cli installation failed; aborting." >&2
  exit 1
fi

if ! setapp-cli list >/dev/null 2>&1; then
  echo "setapp-cli not authenticated. Run 'setapp-cli login' or open Setapp once." >&2
  exit 0
fi

echo "› setapp-cli bundle install"
setapp-cli bundle install --file "$SETAPP_TARGET"

echo "› setapp-cli bundle check"
setapp-cli bundle check --file "$SETAPP_TARGET"
