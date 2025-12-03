function gitignore() {
	# shellcheck disable=SC2296
	curl -fLw '\n' --max-time 5 https://www.toptal.com/developers/gitignore/api/"${(j:,:)@}"
}

_gitignoreio_get_command_list() {
	curl -sfL --max-time 5 https://www.toptal.com/developers/gitignore/api/list 2>/dev/null | tr "," "\n"
}

_gitignoreio () {
	compset -P '*,'
	compadd -S '' $(_gitignoreio_get_command_list)
}

compdef _gitignoreio gitignore
