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

shopt -s autocd
shopt -s checkjobs
shopt -s checkwinsize
shopt -s cmdhist

## cd
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

## the character
alias h='history | less'
alias j='jobs'

## the with comma
alias ,f='find . -type f | xargs grep'

## option override
alias grep='grep --color=auto'
alias la='ls -a --color=auto'
alias ll='ls -l --color=auto'
alias lla='ls -la --color=auto'
alias llr='ls -lR --color=auto'

## command alias
alias today='date +"%F"'
alias now='date +"%F %T"'