[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
xinput set-prop 11 286 0
autocutsel -fork &
autocutsel -selection PRIMARY -fork &
exec i3
