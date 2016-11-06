# .bashrc

# User specific aliases and functions

# env
PATH=:~/.composer/vendor/bin:${PATH}
LANG=ja_JP.UTF-8
LC_ALL=ja_JP.UTF-8
LESSCHARSET=utf-8
EDITOR=vi
DEPLOY_TYPE=dev
export PATH LANG LC_ALL LESSCHARSET EDITOR DEPLOY_TYPE

# UI
PS1="[\u@\h:\W]"

# file system
umask 022

# shopt
export HISTSIZE=100000
export HISTFILESIZE=300000
export HISTTIMEFORMAT='%F %T '
shopt -s checkwinsize
shopt -s dotglob
shopt -s globstar
shopt -s histappend

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
