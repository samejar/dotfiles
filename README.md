# chezmoi dotfiles

These dotfiles are managed entirely with [chezmoi](https://www.chezmoi.io/).
The repository lives in `~/.local/share/chezmoi` and `chezmoi apply` is the
only entry point—there are no manual `bin/` bootstrap scripts or legacy Holman
conventions left.

## install

1. Install [chezmoi](https://www.chezmoi.io/) (Homebrew will be installed automatically if it isn’t already) and apply the dotfiles in a single step:

   ```sh
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   brew install chezmoi git
   chezmoi init --apply samejar/dotfiles
   ```

   `chezmoi init --apply` clones this repo into `~/.local/share/chezmoi`, installs Homebrew if it’s missing, and writes all managed files into `$HOME`.

2. The apply step triggers the provisioning hooks automatically:
   - `run_before_20-install.sh.tmpl` executes `scripts/install`, which runs
     `brew bundle`, cleans up Homebrew, and executes each topic’s `install.sh`
     (Python, Node, etc.).
   - `run_once_before_10-macos.sh.tmpl` applies the curated macOS defaults and
     MailMate setup scripts the first time you apply these dotfiles on a new
     machine.
   - `run_once_after_20-clone-projects.sh.tmpl` clones any repositories listed
     under `[data].projects` in `.chezmoidata.tmpl`.
   - `run_after_30-zimfw.sh.tmpl` ensures Zimfw modules are installed and the
     cached `~/.zim/init.zsh` is rebuilt on every apply.

3. Re-run `chezmoi apply` any time you pull updates to keep your machine in
   sync. The provisioning hook (`run_before_20-install.sh.tmpl`) reruns each
   time, so global pnpm packages, Homebrew bundles, etc., stay current.

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
2. **Install chezmoi and apply the dotfiles**

   ```sh
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   brew install chezmoi git
   chezmoi init --apply samejar/dotfiles
   ```

   `chezmoi init --apply` clones the repo into `~/.local/share/chezmoi`, installs Homebrew if needed, and runs all provisioning hooks. Re-run `chezmoi apply` any time you sync new changes.

3. **Install 1Password & its CLI**
   - Install 1Password from the Mac App Store and sign in.
   - `brew install --cask 1password-cli` (handled automatically by the
     provisioning hook).
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
     `.chezmoidata.tmpl` (`[data].projects`). The
     `run_once_after_20-clone-projects.sh.tmpl` hook clones each repo the first
     time you apply these dotfiles on a machine. Edit that list to add/remove
     repositories before running `chezmoi apply` if you want automatic checkouts
     in `~/development/...`.
7. **(Optional) Customize global pnpm packages**
   - The same data file also exposes `[data].pnpm_packages`, which drives the
     templated `scripts/node/install.sh`. Adjust that array to control which CLI
     tools get installed globally via `pnpm add -g ...` during provisioning.

## repository layout

- **`dot_*` / `private_*` files** – rendered into `$HOME` during
  `chezmoi apply` (for example, `dot_zshrc` → `~/.zshrc`). Use `chezmoi edit`
  when making changes.
- **`scripts/`** – provisioning helpers invoked by the `run_*.tmpl` hooks. They
  live only in `~/.local/share/chezmoi` and are never copied to `$HOME`.
- **`bin/`** – CLI helpers that are added to your shell `$PATH`.
- **`zsh/`** – modular shell configuration (zimrc, aliases, config snippets).
- **`.chezmoidata.tmpl`** – declarative data for repo clones and pnpm packages.

## language runtimes

- **Python** – `scripts/python/install.sh` uses
  [uv](https://github.com/astral-sh/uv) for CLI installs, falling back to
  `pip3`.
- **Node** – `scripts/node/install.sh` installs whatever is in
  `[data].pnpm_packages` via `pnpm add -g` (currently just `playwright`).
- **Go** – `scripts/go/path.zsh` configures `GOPATH/GOBIN` so `go install`
  binaries land on `$PATH`.

## maintenance

- **Updating** – `git pull` inside `~/.local/share/chezmoi` and run `chezmoi
  apply`; hooks do the rest.
- **Issues** – open an issue or PR in this repo if something regresses.
