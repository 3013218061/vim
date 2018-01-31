# init script for both login and non-login shell
# vim: set ft=sh :

if [ -z $_INIT_SH_LOADED ]; then
	_INIT_SH_LOADED=1

	# set PATH so it includes user's private bin if it exists
	if [ -d "$HOME/.local/bin" ]; then
		export PATH="$HOME/.local/bin:$PATH"
	fi

	# execute local init script if it exists
	if [ -f "$HOME/.local/etc/config.sh" ]; then
		. "$HOME/.local/etc/config.sh"
	fi

	# execute post script if it exists
	if [ -f "$HOME/.local/etc/local.sh" ]; then
		. "$HOME/.local/etc/local.sh"
	fi

	# remove duplicate path
	if [ -n "$PATH" ]; then
	  old_PATH=$PATH:; PATH=
	  while [ -n "$old_PATH" ]; do
		x=${old_PATH%%:*}       # the first remaining entry
		case $PATH: in
		  *:"$x":*) ;;         # already there
		  *) PATH=$PATH:$x;;    # not there yet
		esac
		old_PATH=${old_PATH#*:}
	  done
	  PATH=${PATH#:}
	  unset old_PATH x
	fi

	export PATH

	# check if bash or zsh
	if [ -n "$BASH_VERSION" ] || [ -z "$ZSH_VERSION" ]; then

		# run script for interactive shell of bash/zsh
		if [[ $- == *i* ]] && [ -z "$_INIT_SH_NOFUN" ]; then
			if [ -f "$HOME/.local/etc/function.sh" ]; then
				. "$HOME/.local/etc/function.sh"
			fi
		fi
	fi
fi



