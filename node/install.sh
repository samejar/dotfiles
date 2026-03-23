#!/bin/sh
set -e

if ! command -v pnpm >/dev/null 2>&1; then
  if command -v corepack >/dev/null 2>&1; then
    echo "› corepack enable pnpm"
    corepack enable pnpm >/dev/null 2>&1 || true
  fi
fi

if ! command -v pnpm >/dev/null 2>&1; then
  echo "pnpm is not installed yet (run 'brew install pnpm' or enable corepack). Skipping global pnpm packages." >&2
  exit 0
fi

packages=$(chezmoi data | jq -r '.pnpm_packages[]?')
if [ -z "$packages" ]; then
  echo "No pnpm packages defined in chezmoi data; skipping."
  exit 0
fi

echo "Installing global pnpm packages"
printf '%s\n' "$packages" | while read -r pkg; do
  [ -z "$pkg" ] && continue
  if pnpm list -g --depth 0 | grep -q " $pkg@"; then
    echo "  $pkg already installed"
    continue
  fi
  echo "  pnpm add -g $pkg"
  pnpm add -g "$pkg"
done
