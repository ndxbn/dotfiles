if [ "Darwin" = $(uname -s) ]; then
	code() {
		VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args "$*"
	}
fi
