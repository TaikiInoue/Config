PROMPT='%F{green}%~%f:$ '

setopt +0 nomatch

# ls aliases
alias ls='ls -1FG'
alias ll='ls -lFG'
alias lla='ls -lFAG'
alias la='ls -1FAG'
alias cl='clear'
alias c='cd'

# setopt
setopt auto_cd
setopt auto_menu
setopt auto_pushd
setopt pushd_ignore_dups
setopt list_packed
setopt no_beep
setopt nolistbeep

# completion
autoload -U compinit
compinit
zstyle ':completion:*:default' menu select=1

# color
export LSCOLORS=gxfxxxxxcxxxxxxxxxgxgx
export LS_COLORS='di=01;36:ln=01;35:ex=01;32'
zstyle ':completion:*' list-colors 'di=36' 'ln=35' 'ex=32'
