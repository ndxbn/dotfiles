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
