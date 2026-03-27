#!/usr/bin/env bash

# Provision Setapp apps via setapp-cli using the declarative AppList file.

set -euo pipefail

export PATH="$HOME/.local/bin:$PATH"

log() {
  printf '[setapp] %s\n' "$*"
}

warn() {
  printf '[setapp] Warning: %s\n' "$*" >&2
}

DOTFILES=${DOTFILES:-$HOME/.local/share/chezmoi}
SETAPP_DIR="$HOME/.setapp"
SETAPP_TARGET="$SETAPP_DIR/AppList"
INSTALLER_URL="https://raw.githubusercontent.com/maximlevey/setapp-cli/main/install.sh"

if [[ ! -f "$SETAPP_TARGET" ]]; then
  log "Setapp AppList not found at $SETAPP_TARGET; run 'chezmoi apply' first."
  exit 0
fi

if ! command -v setapp-cli >/dev/null 2>&1; then
  log "setapp-cli not found; installing"
  tmp=$(mktemp)
  trap 'rm -f "$tmp"' EXIT
  curl -fsSL "$INSTALLER_URL" -o "$tmp"
  bash "$tmp"
else
  log "setapp-cli already installed"
fi

if ! command -v setapp-cli >/dev/null 2>&1; then
  if [[ -x "$HOME/.local/bin/setapp-cli" ]]; then
    log "setapp-cli installed to ~/.local/bin; using that binary"
    SETAPP_CLI="$HOME/.local/bin/setapp-cli"
  else
    log "setapp-cli installation failed; skipping Setapp provisioning"
    exit 0
  fi
else
  SETAPP_CLI="$(command -v setapp-cli)"
fi

if ! "$SETAPP_CLI" list >/dev/null 2>&1; then
  log "setapp-cli not authenticated. Run 'setapp-cli login' or open Setapp once."
  exit 0
fi

log "Installing apps from $SETAPP_TARGET"
if ! "$SETAPP_CLI" bundle install --file "$SETAPP_TARGET"; then
  warn "Setapp bundle install reported errors. This is usually caused by removed app names or a Setapp desktop app issue."
  warn "Open Setapp.app, sign in, let it fully update, then re-run chezmoi apply."
fi

log "Verifying installed app bundle"
if ! "$SETAPP_CLI" bundle check --file "$SETAPP_TARGET"; then
  warn "Some Setapp apps from AppList are still missing. Keeping apply successful; you can rerun later."
  exit 0
fi

log "Setapp provisioning complete"
