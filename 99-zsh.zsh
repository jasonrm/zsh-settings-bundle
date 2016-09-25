#/bin/zsh
export DEFAULT_USER="jasonrm"
export HISTSIZE=100000
export SAVEHIST=100000
export HISTFILE="$HOME/.zhistory"

setopt no_share_history
setopt HIST_SAVE_NO_DUPS

backward-delete-to-slash () {
  local WORDCHARS=${WORDCHARS//\//}
  zle .backward-delete-word
}
zle -N backward-delete-to-slash
bindkey '^w' backward-delete-to-slash
