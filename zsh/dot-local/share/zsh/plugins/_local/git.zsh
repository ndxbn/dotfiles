# git utils

## You SHOULD use "git-config [alias] section" for simple shorthand.
## You MAY use alias If you need execute chain.
## ２つ以上のコマンドを `&&` でつなぎたい場合は、alias を使っても良い。
alias git-push-pr='git push && gh pr create --fill --draft'

cdroot() {
	local dir
	dir=$(git rev-parse --show-toplevel 2>/dev/null)
	[[ -n ${dir} ]] && cd ${dir}

}

