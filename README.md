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

1. Install [Homebrew](https://brew.sh) and chezmoi:

   ```sh
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   brew install chezmoi git
   ```

2. Apply the dotfiles with chezmoi:

   ```sh
   chezmoi init --apply samejar/dotfiles
   ```

   Chez-moi clones this repo to `~/.local/share/chezmoi` and writes the managed
   files into `$HOME`.

3. Run the provisioning script (installs Homebrew packages and runs each
   topic’s `install.sh` helper):

   ```sh
   chezmoi cd && ./script/install
   ```

4. (Optional) Apply the curated macOS defaults once per machine:

   ```sh
   chezmoi cd && ./macos/set-defaults.sh
   ```

Customize your shell by editing:

- `zsh/zimrc` – Zimfw modules and prompts
- `zsh/config.zsh` – shared environment variables and PATH tweaks
- `zsh/aliases.zsh` – aliases and functions
- `zsh/local.zsh` – optional, git-ignored file for host-specific overrides

Use `chezmoi edit ~/.zshrc` (or `chezmoi cd` to enter the source tree) followed
by `chezmoi apply` to propagate any changes.

### New machine checklist

1. **Sign in to macOS & GitHub**
   - Install the Xcode Command Line Tools (`xcode-select --install`) when
     prompted.
   - In Safari/Arc, sign in to GitHub with your passkey so HTTPS cloning works
     immediately.
2. **Install and apply the dotfiles**

   ```sh
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   brew install chezmoi git
   chezmoi init --apply samejar/dotfiles
   chezmoi cd && ./script/install
   chezmoi cd && ./macos/set-defaults.sh   # optional, once per machine
   ```

3. **Install 1Password & its CLI**
   - Install 1Password from the Mac App Store and sign in.
   - `brew install --cask 1password-cli` (handled automatically by
     `script/install`).
4. **Create a per-machine SSH key stored in 1Password**

   ```sh
   ssh-keygen -t ed25519 -C "github-$(scutil --get ComputerName)"
   op signin
   op item create --category "ssh-key" --title "GitHub $(hostname)" \
     private-key=@~/.ssh/id_ed25519 public-key=@~/.ssh/id_ed25519.pub
   rm ~/.ssh/id_ed25519
   ```

   - In 1Password, open the new SSH key item and enable **Use with SSH agent**.
   - Copy the public key and add it to GitHub (Settings → SSH and GPG keys).
5. **Switch git remotes to SSH** (optional)

   ```sh
   chezmoi cd
   git remote set-url origin git@github.com:samejar/dotfiles.git
   ```

   From now on `git pull`/`git push` use the 1Password SSH agent.

6. **(Optional) Customize default project clones**
   - ChezMoi maintains a list of frequently used repositories in
     `dot_config/chezmoi/chezmoi.toml.tmpl` (`[data].projects`). The
     `run_once_after_20-clone-projects.sh.tmpl` hook clones each repo the first
     time you apply these dotfiles on a machine. Edit that list to add/remove
     repositories before running `chezmoi apply` if you want automatic checkouts
     in `~/development/...`.
7. **(Optional) Customize global pnpm packages**
   - The same data file also exposes `[data].pnpm_packages`, which drives the
     templated `node/install.sh`. Adjust that array to control which Node CLI
     tools get installed globally via `pnpm add -g ...` during provisioning.

## topical

Everything's built around topic areas. If you're adding a new area to your
forked dotfiles — say, "Java" — you can simply add a `java` directory and put
files in there. Anything with an extension of `.zsh` will get automatically
included into your shell. Files prefixed with `dot_` (for example `dot_zshrc`)
are materialized into `$HOME` when you run `chezmoi apply`.

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
- **dot_* / private_* files**: ChezMoi writes these into your `$HOME` (e.g.
  `dot_zshrc` becomes `~/.zshrc`). Use `chezmoi apply` after editing to sync the
  rendered copies.

## language runtimes

- **Python**: The `python/install.sh` helper prefers
  [uv](https://github.com/astral-sh/uv) for lightweight CLI installs. If `uv`
  isn't available it falls back to `pip3`.
- **Node**: `node/install.sh` handles the global CLI tools that aren't easily
- **Node**: `node/install.sh` installs global CLI tools with `pnpm add -g`
  according to `[data].pnpm_packages` in `dot_config/chezmoi/chezmoi.toml.tmpl`.
  Update that list to change which CLIs get provisioned on new machines.
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
