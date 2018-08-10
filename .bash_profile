#!/bin/sh

# Profile file. Runs on login.

#export PATH="$PATH:$HOME/.scripts"
export EDITOR="gedit"
export TERMINAL="urxvt"
export BROWSER="firefox"
export READER="zathura"

[[ ! -f ~/.shortcuts ]] && ~/.scripts/shortcuts.sh 2>/dev/null

[[ -f ~/.bashrc ]] && . ~/.bashrc

# Start graphical server if i3 not already running.
if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep -x i3 || exec startx
fi

screenfetch
