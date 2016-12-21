# .bashrc

# UI
## e.g.
# (水 11月 09 23:15:30)ndxbn@test:~
# [0]:$ date
# 2016年 11月  9日 水曜日 23:15:34 JST
# (水 11月 09 23:15:34)ndxbn@test:~
# [0]:$ hoge
# -bash: hoge: コマンドが見つかりません
# (水 11月 09 23:15:36)ndxbn@test:~
# [127]:$
PS1="(\d \t)[\u@\H:\w]\n\`echo \$?\`:\$ "

## shell option
shopt -s autocd
shopt -s checkjobs
shopt -s checkwinsize
shopt -s cmdhist

## cd shortcut
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ho="mkdir -p ~/`today` && cd ~/`today`"

## character
# The first letter of simple command.
# If it is NOT "simple command", you should use "with comma" alias.
alias h='history | less'
alias j='jobs'

## with comma
# The first letter of command includes pipe.
# If it is "simple command", you should use "character" alias.
alias ,f='find . -type f | xargs grep'

## aliases alias
alias al='alias'
alias ua='unalias'

## option override
alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias la='ls -a --color=auto'
alias ll='ls -l --color=auto'
alias lla='ls -la --color=auto'
alias llr='ls -lR --color=auto'

## date time strings for file name
# these are used for file name or more.
# if you want to check datetime at now, look to prompt.
alias today='date +"%F"'
alias now='date +"%F_%H%M%S"'