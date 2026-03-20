# Setting up Zsh

The interactive shell now uses [Zimfw](https://zimfw.sh/), a lightweight plugin framework that is
installed via Homebrew and configured through files in this repository.

## 1. Install dependencies

```sh
brew install zsh zimfw
```

Ensure your login shell points at Homebrew Zsh (only needs to be done once):

```sh
sudo dscl . -create /Users/$USER UserShell /opt/homebrew/bin/zsh
```

## 2. Link the runcoms

```sh
ln -sf ~/.dotfiles/zsh/zshrc ~/.zshrc
ln -sf ~/.dotfiles/zsh/zprofile ~/.zprofile
```

Optional local overrides can live in `~/.dotfiles/zsh/local.zsh` (git-ignored).

## 3. Bootstrap Zimfw

The checked-in `.zshrc` points `ZIM_CONFIG_FILE` to `~/.dotfiles/zsh/zimrc`. After linking the files
above, populate `~/.zim` with the configured modules:

```sh
zimfw install
zimfw build
```

Whenever you edit `zsh/zimrc`, rerun `zimfw install && zimfw build` to pull in the new modules. The
next interactive shell will reuse the cached `~/.zim/init.zsh` automatically.
