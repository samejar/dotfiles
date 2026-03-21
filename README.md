# holman does dotfiles

## dotfiles

Your dotfiles are how you personalize your system. These are mine.

I was a little tired of having long alias files and everything strewn about
(which is extremely common on other dotfiles projects, too). That led to this
project being much more topic-centric. I realized I could split a lot of things
up into the main areas I used (Ruby, git, system libraries, and so on), so I
structured the project accordingly.

If you're interested in the philosophy behind why projects like these are
awesome, you might want to [read my post on the
subject](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/).

## install

Run this:

```sh
git clone https://github.com/samejar/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

`script/bootstrap` symlinks every `*.symlink` file into your home directory, so
`~/.zshrc` and `~/.zprofile` automatically point at the Zimfw-driven runcoms in
`zsh/`.

Next, install the Homebrew packages, macOS defaults, and Zimfw modules:

```sh
bin/dot
```

`bin/dot` runs `brew bundle`, executes any `install.sh` helper under each topic,
and finishes by calling `zimfw install && zimfw build` so shells on every
machine share the same module cache.

Customize your shell by editing:

- `zsh/zimrc` – Zimfw modules and prompts
- `zsh/config.zsh` – shared environment variables and PATH tweaks
- `zsh/aliases.zsh` – aliases and functions
- `zsh/local.zsh` – optional, git-ignored file for host-specific overrides

Whenever `zsh/zimrc` changes, rerun `zimfw install && zimfw build` (or just run
`bin/dot` again) to refresh the cached init script.

## topical

Everything's built around topic areas. If you're adding a new area to your
forked dotfiles — say, "Java" — you can simply add a `java` directory and put
files in there. Anything with an extension of `.zsh` will get automatically
included into your shell. Anything with an extension of `.symlink` will get
symlinked without extension into `$HOME` when you run `script/bootstrap`.

## what's inside

A lot of stuff. Seriously, a lot of stuff. Check them out in the file browser
above and see what components may mesh up with you.
[Fork it](https://github.com/holman/dotfiles/fork), remove what you don't
use, and build on what you do use.

## components

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your
  environment.
- **topic/path.zsh**: Any file named `path.zsh` is loaded first and is
  expected to setup `$PATH` or similar.
- **topic/completion.zsh**: Any file named `completion.zsh` is loaded
  last and is expected to setup autocomplete.
- **topic/\*.symlink**: Any files ending in `*.symlink` get symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `script/bootstrap`.

## language runtimes

- **Python**: The `python/install.sh` helper prefers
  [uv](https://github.com/astral-sh/uv) for lightweight CLI installs. If `uv`
  isn't available it falls back to `pip3`.
- **Node**: `node/install.sh` handles the global CLI tools that aren't easily
  managed via `corepack`. Feel free to replace the `npm install -g` lines with
  `pnpm dlx`/`corepack` equivalents if your workflow moves that direction.
- **Go**: `go/path.zsh` defaults `GOPATH` to `~/go` (matching `go env GOPATH`)
  and prepends `$GOBIN` to `PATH`, so binaries installed with `go install` or
  `uv tool install` are available immediately.

## bugs

I want this to work for everyone; that means when you clone it down it should
work for you even though you may not have `rbenv` installed, for example. That
said, I do use this as *my* dotfiles, so there's a good chance I may break
something if I forget to make a check for a dependency.

If you're brand-new to the project and run into any blockers, please
[open an issue](https://github.com/holman/dotfiles/issues) on this repository
and I'd love to get it fixed for you!

## thanks

I forked [Ryan Bates](http://github.com/ryanb)' excellent
[dotfiles](http://github.com/ryanb/dotfiles) for a couple years before the
weight of my changes and tweaks inspired me to finally roll my own. But Ryan's
dotfiles were an easy way to get into bash customization, and then to jump ship
to zsh a bit later. A decent amount of the code in these dotfiles stem or are
inspired from Ryan's original project.
