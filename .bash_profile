# .bash_profile
# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

# User specific environment and startup programs

# env
PATH=$HOME/bin:$PATH:$HOME/.local/bin
LANG=ja_JP.UTF-8
LC_ALL=ja_JP.UTF-8
LESSCHARSET=utf-8
EDITOR=vi
DEPLOY_TYPE=dev
export PATH LANG LC_ALL LESSCHARSET EDITOR DEPLOY_TYPE

# UI
export PS1="(\d \t)\u@\H:\W
[\`echo \$?\`]:\$ "

# file system
# this may be "de facto"
umask 022

# history config
# History will modify a file. It means "the option has side-effect".
# so, it should NOT write in "~/.bashrc" file
export HISTSIZE=100000
export HISTFILESIZE=300000
export HISTTIMEFORMAT='%F %T '
shopt -s histappend