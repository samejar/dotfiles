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
chezmoi cd && bin/dot
```

Optional local overrides can live in `~/.local/share/chezmoi/zsh/local.zsh`
(git-ignored). They will be sourced automatically after `zsh/config.zsh`.

## 3. Bootstrap Zimfw

The checked-in `.zshrc` points `ZIM_CONFIG_FILE` to `zsh/zimrc`. After applying
the dotfiles, populate `~/.zim` with the configured modules:

```sh
zimfw install && zimfw build
```

`bin/dot` runs the same command automatically after installing Homebrew
formulae, so you only need to run it manually when experimenting. Whenever you
edit `zsh/zimrc`, rerun `zimfw install && zimfw build` to pull in the new
modules. The next interactive shell will reuse the cached `~/.zim/init.zsh`
automatically.
