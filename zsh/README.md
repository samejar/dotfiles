# Setting up zsh

## Homebrew zsh

Ensure homebrew has installed zsh:

  brew info zsh

To set homebrew zsh for user:

  sudo dscl . -create /Users/$USER UserShell /usr/local/bin/zsh

## Setup prezto

Ensure the zprezto submodule is loaded into `~/.dotfiles`:

  git submodule init

  git pull --recurse-submodules


Prezto itself contains a number of submodules, from the zprtezto directory ensure these are loaded:

  git submodule init

  git submodule update --recursive --remote

To setup prezto:


