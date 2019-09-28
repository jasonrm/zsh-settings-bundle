#/bin/zsh
export DEFAULT_USER="jasonrm"
export HISTSIZE=100000
export SAVEHIST=100000
export HISTFILE="$HOME/.zhistory"

zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

# Have to do this again for tmux
bindkey '^[[B' history-substring-search-down
bindkey '^[[A' history-substring-search-up

setopt no_share_history
setopt HIST_SAVE_NO_DUPS

backward-delete-to-slash () {
  local WORDCHARS=${WORDCHARS//\//}
  zle .backward-delete-word
}
zle -N backward-delete-to-slash
bindkey '^w' backward-delete-to-slash

PURE_GIT_PULL=0
