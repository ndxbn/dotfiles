# GitHub tools
alias ghls="gh repo list --json nameWithOwner --jq '.[].nameWithOwner' --no-archived"
alias ghg="ghq get -p --parallel --clean-bare"
alias ghu="ghq list | ghq get --update --parallel --silent"

## cdgh
### reason to NOT "ghcd", this command may not use GitHub API if not need.
cdgh() {
	local repo_name="$(ghq list | peco --select-1 --query "${1}")"
	#"# // hack to avoid IntelliJ ShellScript Coloring bug
	test -z "${repo_name}" && return 1
	pushd "$(ghq root)/${repo_name}"
}

## Fork, Clone and `pushd` under there.
### arg1: "{owner}/{repo}"
ghfork() {
	gh repo fork "${1}" --clone=false
	local fork_repo_name="ndxbn/$(echo "${1}" | awk -F/ '{print $2}')"
	ghg "${fork_repo_name}"
	cdgh "${fork_repo_name}"
	git remote add upstream "https://github.com/${1}.git"
}

