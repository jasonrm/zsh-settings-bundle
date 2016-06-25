#/bin/zsh
setopt no_share_history

backward-delete-to-slash () {
  local WORDCHARS=${WORDCHARS//\//}
  zle .backward-delete-word
}
zle -N backward-delete-to-slash
bindkey '^w' backward-delete-to-slash
