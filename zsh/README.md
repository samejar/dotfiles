# Setting up Zsh

The interactive shell now uses [Zimfw](https://zimfw.sh/), a lightweight plugin framework that is
installed via Homebrew and configured through files in this repository.

## 1. Install dependencies

```sh
brew install zsh zimfw chezmoi git
```

Ensure your login shell points at Homebrew Zsh (only needs to be done once):

```sh
sudo dscl . -create /Users/$USER UserShell /opt/homebrew/bin/zsh
```

## 2. Apply the dotfiles

Use chezmoi to pull this repo into `~/.local/share/chezmoi` and install the
managed files:

```sh
chezmoi init --apply samejar/dotfiles
```

Optional local overrides can live in `~/.local/share/chezmoi/zsh/local.zsh`
(git-ignored). They will be sourced automatically after `zsh/config.zsh`.

## 3. Bootstrap Zimfw

The checked-in `.zshrc` points `ZIM_CONFIG_FILE` to `zsh/zimrc`. The
`run_after_30-zimfw.sh.tmpl` hook automatically runs `zimfw install && zimfw
build` after each `chezmoi apply`, so your plugins remain up to date. If you
need to rerun it manually:

```sh
ZDOTDIR="$HOME" zsh -i -c 'zimfw install && zimfw build'
```
