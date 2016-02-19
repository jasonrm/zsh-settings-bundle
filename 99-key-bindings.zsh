#/bin/zsh
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

# Have to do this again for tmux
bindkey '^[[B' history-substring-search-down
bindkey '^[[A' history-substring-search-up
