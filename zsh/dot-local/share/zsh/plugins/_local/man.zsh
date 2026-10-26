export MANPAGER="less -R --use-color -Dd+m -Du+c -N"
if [[ "Darwin" = "$(uname -s)" ]]
then
	alias man='env MANWIDTH=$((COLUMNS - 8)) command man'
else
	alias man='env MANWIDTH=$((COLUMNS - 8)) man'
fi

