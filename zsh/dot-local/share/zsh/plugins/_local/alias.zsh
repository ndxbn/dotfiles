# ls family
alias ls='ls --color=auto'
alias la='ls -A'
alias ll='ls -l'
alias lla='ls -Al'

# default options
alias grep='grep --color'

# another name
alias vim='vi'

# shorthand
alias httpd='docker run -v `pwd`:/usr/share/nginx/html:ro -p 8080:80 nginx:alpine'
alias tmp='pushd "$(TMPDIR=${HOME}/.local/tmp mktemp -d)"'
alias venv='python3 -m venv venv && source ./venv/bin/activate'
alias ty='whence -p'
# print something
## you can get from pP that which venv is activated.
alias pP='echo ${PATH} | sed -e "s/:/\n/g"'
alias pF='echo ${FPATH} | sed -e "s/:/\n/g"'
alias ec='echo $?'

# util
alias now='date -Is'
alias zprofstart='zmodload zsh/zprof'
alias zprofend='zmodload -u zsh/zprof'
alias gitprofstart='export GIT_TRACE2_PERF=${HOME}/git_trace2.log'
alias gitprofend='export GIT_TRACE2_PERF=0'

# AWS
alias awlogin='for prof in $(aws configure list-profiles | xargs echo); do aws sso login --profile ${prof} & ; done'
alias awprofile='export AWS_PROFILE=$(aws configure list-profiles | peco)'

_assh() {
	# get EC2 instances and select one
	# resolve instance id (i-nnnn)
	# ssh into it
}
#alias assh='_assh'

# Git
_cdroot() {
	local dir
	dir=$(git rev-parse --show-toplevel 2>/dev/null)
	[[ -n ${dir} ]] && cd ${dir}

}
alias cdroot='_cdroot'

# GitHub tools
## cdgh
### reason to NOT "ghcd", this command may not use GitHub API if not need.
_cdgh() {
	if [[ -z ${1} ]]; then
		local repo_name="$(ghq list | peco --select-1)"
		 #" // hack to avoid IntelliJ ShellScript Coloring bug
	else
		local repo_name="$(ghq list | grep "${1}" | peco --select-1)"
		 #" // hack to avoid IntelliJ ShellScript Coloring bug
	fi
	test -z "${repo_name}" && return 1
	pushd "$(ghq root)/${repo_name}"
}
alias cdgh="_cdgh"
## ghls
alias ghls="gh repo list --json nameWithOwner --jq '.[].nameWithOwner' --no-archived"
## ghg: GitHub Get, clone repo and `pushd` under there.
### arg1: Optional<String> "{owner}/{repo}"
###       if undef, select from interactive list.
_ghg() {
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
alias ghg="_ghg"
## Fork, Clone and `pushd` under there.
### arg1: "{owner}/{repo}"
_ghfork() {
	gh repo fork "${1}" --clone=false
	local fork_repo_name="ndxbn/$(echo "${1}" | awk -F/ '{print $2}')"
	ghg "${fork_repo_name}"
	git remote add upstream https://github.com/"${1}".git
}
alias ghfork="_ghfork"
