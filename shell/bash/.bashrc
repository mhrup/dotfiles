# if not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# set history length
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
test -x /usr/bin/lesspipe && eval "$(SHELL=/bin/sh lesspipe)"

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# my bash environment
test -f "$HOME/.bash/env" && . "$HOME/.bash/env" && {

	# set variables after each command
	PROMPT_COMMAND='
		__MY_EXIT_STATUS=$?
		__MY_GIT_DIR="$(__my_git_dir)"
		__MY_GIT_BRANCH="$(__my_git_branch)"

		PS1="$(__my_prompt)"
	'
}

