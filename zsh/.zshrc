export ZSH="$HOME/.oh-my-zsh"

zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 7
zstyle ':omz:*' aliases no

DISABLE_LS_COLORS='true'
DISABLE_AUTO_TITLE='true'

ENABLE_CORRECTION='true'

plugins=(
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

HISTSIZE=20000

setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_REDUCE_BLANKS
setopt INC_APPEND_HISTORY_TIME

unsetopt SHARE_HISTORY
unsetopt AUTO_CD 

export LANG=en_GB.UTF-8

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

autoload -U add-zsh-hook

load-nvmrc() {
  local nvmrc_path
  nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version
    nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = 'N/A' ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$(nvm version)" ]; then
      nvm use
    fi
  elif [ -n "$(PWD=$OLDPWD nvm_find_nvmrc)" ] && [ "$(nvm version)" != "$(nvm version default)" ]; then
    echo 'Reverting to nvm default version'
    nvm use default
  fi
}

add-zsh-hook chpwd load-nvmrc
load-nvmrc

export PNPM_HOME='/Users/tokk/Library/pnpm'

case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

export PATH="/usr/local/sbin:$PATH"

export PATH="/usr/local/opt/sqlite/bin:$PATH"
export LDFLAGS='-L/usr/local/opt/sqlite/lib'
export CPPFLAGS='-I/usr/local/opt/sqlite/include'
export PKG_CONFIG_PATH='/usr/local/opt/sqlite/lib/pkgconfig'

export HOMEBREW_NO_ENV_HINTS=1

export LESS='-RS'
export MANPAGER='bat -plman'

export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"

source <(fzf --zsh)

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
