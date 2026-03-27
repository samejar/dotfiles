#!/bin/sh
set -e

log() {
  printf '[node] %s\n' "$*"
}

warn() {
  printf '[node] Warning: %s\n' "$*" >&2
}

if ! command -v pnpm >/dev/null 2>&1; then
  if command -v corepack >/dev/null 2>&1; then
    log "pnpm missing; trying corepack enable pnpm"
    corepack enable pnpm >/dev/null 2>&1 || true
  fi
fi

if ! command -v pnpm >/dev/null 2>&1; then
  log "pnpm is not installed yet (run 'brew install pnpm' or enable corepack); skipping global pnpm packages"
  exit 0
fi

if [ -z "${PNPM_HOME:-}" ]; then
  case "$(uname -s)" in
    Darwin) PNPM_HOME="$HOME/Library/pnpm" ;;
    *) PNPM_HOME="$HOME/.local/share/pnpm" ;;
  esac
  export PNPM_HOME
fi

mkdir -p "$PNPM_HOME"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *)
    export PATH="$PNPM_HOME:$PATH"
    log "Added PNPM_HOME to PATH for this run ($PNPM_HOME)"
    ;;
esac

if ! pnpm bin -g >/dev/null 2>&1; then
  log "Configuring pnpm global bin directory at $PNPM_HOME"
  pnpm config set global-bin-dir "$PNPM_HOME" >/dev/null 2>&1 || true
fi

packages=$(chezmoi data | jq -r '.pnpm_packages[]?')
if [ -z "$packages" ]; then
  log "No pnpm packages defined in chezmoi data; skipping"
  exit 0
fi

total=$(printf '%s\n' "$packages" | wc -l | tr -d ' ')
current=0
log "Installing global pnpm packages"
printf '%s\n' "$packages" | while read -r pkg; do
  [ -z "$pkg" ] && continue
  current=$((current + 1))
  if pnpm list -g --depth 0 | grep -q " $pkg@"; then
    echo "  [$current/$total] $pkg already installed"
    continue
  fi
  echo "  [$current/$total] pnpm add -g $pkg"
  if ! pnpm add -g "$pkg"; then
    warn "Failed to install $pkg globally; continuing"
  fi
done

log "Global pnpm package sync complete"
