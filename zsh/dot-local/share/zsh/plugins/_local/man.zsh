export MANPAGER="less -R --use-color -Dd+m -Du+c -N"
alias man='env MANWIDTH=$((COLUMNS - 8)) command man'

