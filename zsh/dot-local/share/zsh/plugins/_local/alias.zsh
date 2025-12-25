# ls family
alias ls='ls --color=auto'
alias la='ls -A'
alias ll='ls -l'
alias lla='ls -Al'
alias tree='gio tree'

# grep family
alias grep='grep --color'
alias grepR='grep -s -R'

# cwd management
alias pd='pushd'
alias po='popd'
alias d='dirs -v'

# another name
alias vim='vi'

# shorthand
alias httpd='docker run -v `pwd`:/usr/share/nginx/html:ro -p 8080:80 nginx:alpine'
alias tmp='pushd "$(TMPDIR=${HOME}/.local/tmp mktemp -d)"'
alias venv='python3 -m venv venv && source ./venv/bin/activate'
alias ty='whence -p'
## git
alias gia='git add .'
alias gib='git bb'
alias gid='git diff'
alias gis='git st'
# print something
alias pP='echo ${PATH} | sed -e "s/:/\n/g"'
alias pF='echo ${FPATH} | sed -e "s/:/\n/g"'
alias ec='echo $?' # echo Exit Code

# fioncat/otree auto-flush issue workaround
alias otree="PROMPT='%# ' otree"

# util
alias now='date -Is'
# zprof
alias zprofstart='zmodload zsh/zprof'
alias zprofend='zmodload -u zsh/zprof'
# git trace2 perf
alias gitprofstart='export GIT_TRACE2_PERF=${HOME}/git_trace2.log'
alias gitprof='cat ${GIT_TRACE2_PERF}'
alias gitprofreset=': > ${GIT_TRACE2_PERF}'
alias gitprofend='export GIT_TRACE2_PERF=0'

# AWS
alias awschksession='aws configure list-profiles | xargs -P 10 -I {} bash -c "aws sts get-caller-identity --profile {} > /dev/null 2>&1 || echo {}"'
alias awsprofile='export AWS_PROFILE=$(aws configure list-profiles | peco)'

# ssh into EC2 instance
awss() {
	local instances_json candidates selection name instance_id

	instances_json=$(aws ec2 describe-instances --output json --filters Name=instance-state-name,Values=running) || return $?

	candidates=$(echo "${instances_json}" | jq -r '
		(.Reservations // [])[]
		| (.Instances // [])[]
		| [
			((.Tags // []) | map(select(.Key=="Name")) | map(.Value) | first) // "(no-name)",
			.InstanceId
		  ] | @tsv
	') || return 1
	if [[ -z "${candidates//[$'\t\r\n ']}" ]]; then
		echo 'no running instances found'
		return 1
	fi

	selection=$(printf '%s\n' "${candidates}" | peco) || return 1
	[[ -z "${selection}" ]] && return 1

	IFS=$'\t' read -r name instance_id <<< "${selection}"
	[[ -z "${instance_id}" ]] && return 1

	[[ -w ${HOME}/.aws-ssh-history ]] && echo "$(date -Is)\t${AWS_PROFILE}\t${instancer_id}"
	aws ssm start-session --target "${instance_id}"
}
