typeset -gU path fpath

# Tell Homebrew where the Brewfile lives so `brew bundle` works anywhere.
export HOMEBREW_BUNDLE_FILE=${HOMEBREW_BUNDLE_FILE:-$DOTFILES/.Brewfile}

# History configuration
export HISTFILE=${HISTFILE:-${ZDOTDIR:-$HOME}/.zsh_history}
export HISTSIZE=${HISTSIZE:-10000}
export SAVEHIST=${SAVEHIST:-10000}
setopt APPEND_HISTORY
setopt SHARE_HISTORY
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_VERIFY
setopt EXTENDED_HISTORY

# Homebrew completions first
[[ -d /opt/homebrew/share/zsh-completions ]] && fpath=(/opt/homebrew/share/zsh-completions $fpath)

# Custom bin directories
path=("$DOTFILES/bin" $path)
[[ -d /usr/local/opt/libpq/bin ]] && path=(/usr/local/opt/libpq/bin $path)
path=("$HOME/.local/bin" $path)

# Node via nodenv
if command -v nodenv >/dev/null 2>&1; then
  export NODENV_ROOT=${NODENV_ROOT:-$HOME/.nodenv}
  eval "$(nodenv init -)"
fi

# Java via jenv
if command -v jenv >/dev/null 2>&1; then
  export JENV_ROOT=${JENV_ROOT:-$HOME/.jenv}
  eval "$(jenv init -)"
  jenv enable-plugin export >/dev/null 2>&1
  jenv enable-plugin maven >/dev/null 2>&1
  jenv enable-plugin gradle >/dev/null 2>&1
  jenv enable-plugin springboot >/dev/null 2>&1
fi

# Maven
if command -v brew >/dev/null 2>&1; then
  typeset maven_prefix
  maven_prefix=$(brew --prefix maven 2>/dev/null)
  if [[ -n ${maven_prefix} ]]; then
    export M2_HOME=${maven_prefix}
    path+=(${M2_HOME}/bin)
  fi
fi

# Go via goenv
if command -v goenv >/dev/null 2>&1; then
  export GOENV_ROOT=${GOENV_ROOT:-$HOME/.goenv}
  export GOENV_PATH_ORDER=${GOENV_PATH_ORDER:-front}
  path=(${GOENV_ROOT}/bin $path)
  eval "$(goenv init -)"
  [[ -n ${GOROOT} ]] && path+=(${GOROOT}/bin)
  [[ -n ${GOPATH} ]] && path+=(${GOPATH}/bin)
fi

# Docker (Colima)
export DOCKER_HOST="unix://${HOME}/.colima/default/docker.sock"

# Ruby gems keg
if command -v brew >/dev/null 2>&1; then
  typeset gem_cellar
  gem_cellar="$(brew --prefix)/Cellar/gems/2.0"
  if [[ -d ${gem_cellar} ]]; then
    export GEM_HOME=${gem_cellar}
    export GEM_PATH=${gem_cellar}
    path+=(${gem_cellar}/bin)
  fi
fi

# 1Password SSH agent
export SSH_AUTH_SOCK="$HOME/Library/Group Containers/2BUA8C4S2C.com.1password/t/agent.sock"

# Kubernetes config
export KUBECONFIG=$HOME/.kube/kubeconfig-xeric

# Serverless tab completion
typeset sls_tab
sls_tab=/usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions
[[ -f ${sls_tab}/serverless.zsh ]] && source "${sls_tab}/serverless.zsh"
[[ -f ${sls_tab}/sls.zsh ]] && source "${sls_tab}/sls.zsh"

# Prompt tweaks
export SPACESHIP_VI_MODE_SHOW=${SPACESHIP_VI_MODE_SHOW:-false}

# History substring search on arrow keys
autoload -Uz history-substring-search-up history-substring-search-down
zmodload -i zsh/terminfo 2>/dev/null || true
bindkey "${terminfo[kcuu1]:-[A}" history-substring-search-up
bindkey "${terminfo[kcud1]:-[B}" history-substring-search-down
bindkey '^P' history-substring-search-up
bindkey '^N' history-substring-search-down
