# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
setopt appendhistory autocd extendedglob nomatch notify
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/chronos/user/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# colors
autoload -Uz colors
colors
setopt histignorealldups

# aliases
## cd
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

## char
alias h='history | less'
alias j='jobs'

## option override
alias grep='grep --color=auto'
alias ll='ls -al --color=auto'
alias la='ls -a --color=auto'
alias lla='ls -la --color=auto'
alias llr='ls -lR --color=auto'

PROMPT="%n@%M:%/
%?:%# "
RPROMPT="%D %*"
bindkey '^r' history-incremental-pattern-search-backward
