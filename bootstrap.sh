#!/usr/bin/env bash
set -euo pipefail

step() {
  printf '\n[bootstrap %s/%s] %s\n' "$1" "$2" "$3"
}

if [[ "$(uname -s)" != "Darwin" ]]; then
  echo "bootstrap.sh currently supports macOS only." >&2
  exit 1
fi

step 1 3 "Running macOS software updates"
echo "› sudo softwareupdate -i -a"
sudo softwareupdate -i -a

step 2 3 "Ensuring Homebrew is installed"
if ! command -v brew >/dev/null 2>&1; then
  echo "› Installing Homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "› Homebrew already installed"
fi

if [[ -x /opt/homebrew/bin/brew ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
elif [[ -x /usr/local/bin/brew ]]; then
  eval "$(/usr/local/bin/brew shellenv)"
fi

step 3 3 "Ensuring chezmoi is installed"
if ! command -v chezmoi >/dev/null 2>&1; then
  echo "› brew install chezmoi"
  brew install chezmoi
else
  echo "› chezmoi already installed"
fi

echo "\n[bootstrap] Complete. Next step: chezmoi apply"
