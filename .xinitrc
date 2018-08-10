[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
wal -R
setxkbmap -layout us,ara -variant ,qwerty_digits -option grp:win_space_toggle
/usr/bin/VBoxClient-all
exec i3
