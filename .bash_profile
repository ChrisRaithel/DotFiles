#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [ -z "$DISPLAY" ] && [ -n "$XDG-VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
	startx
fi
