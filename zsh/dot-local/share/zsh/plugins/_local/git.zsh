# Git
cdroot() {
	local dir
	dir=$(git rev-parse --show-toplevel 2>/dev/null)
	[[ -n ${dir} ]] && cd ${dir}

}

# GitHub tools
## ghls
alias ghls="gh repo list --json nameWithOwner --jq '.[].nameWithOwner' --no-archived"

## cdgh
### reason to NOT "ghcd", this command may not use GitHub API if not need.
cdgh() {
	local repo_name="$(ghq list | peco --select-1 --query "${1}")"
	#"# // hack to avoid IntelliJ ShellScript Coloring bug
	test -z "${repo_name}" && return 1
	pushd "$(ghq root)/${repo_name}"
}

## ghg: GitHub Get, clone repo and `pushd` under there.
### arg1: Optional<String> "{owner}/{repo}"
###       if undef, select from interactive list.
ghg() {
	if [[ -z ${1} ]]; then
		local repos="$(mktemp)"
		ghls -L 100 ndxbn >"${repos}"
		for owner in $(gh org list); do
			ghls -L 100 "${owner}" >>"${repos}"
		done
		local repo_name="$(cat "${repos}" | peco)"
		rm "${repos}"
	else
		local repo_name="${1}"
	fi
	test -z "${repo_name}" && return 1
	ghq get -p "${repo_name}"
	cdgh "${repo_name}"
}

## Fork, Clone and `pushd` under there.
### arg1: "{owner}/{repo}"
ghfork() {
	gh repo fork "${1}" --clone=false
	local fork_repo_name="ndxbn/$(echo "${1}" | awk -F/ '{print $2}')"
	ghg "${fork_repo_name}"
	git remote add upstream https://github.com/"${1}".git
}
