#!/usr/bin/env bash
set -euo pipefail

log() {
  printf '[macos] %s\n' "$*"
}

# Software updates are handled explicitly by bootstrap.sh to avoid running
# them on every `chezmoi apply`.
log "Skipping softwareupdate during apply (handled by bootstrap.sh)."

# backblaze is a manual-installer cask; brew stages it but does not execute it.
if ! command -v brew >/dev/null 2>&1; then
  log "Homebrew not available; skipping Backblaze installer check"
  exit 0
fi

if ! brew list --cask backblaze >/dev/null 2>&1; then
  log "Backblaze cask not installed yet; skipping installer launch"
  exit 0
fi

if [ -d "/Applications/Backblaze.app" ]; then
  log "Backblaze already installed"
  exit 0
fi

installer_app=""
for path in "$(brew --prefix)/Caskroom/backblaze"/*/"Backblaze Installer.app"; do
  if [ -d "$path" ]; then
    installer_app="$path"
  fi
done

if [ -z "$installer_app" ]; then
  log "Backblaze installer app not found in Caskroom"
  exit 0
fi

log "Launching Backblaze Installer.app (manual completion required)"
open "$installer_app"
