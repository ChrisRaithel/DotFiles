[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
xinput set-prop 11 286 0
exec i3
