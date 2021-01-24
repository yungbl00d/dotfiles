xinput set-prop 10 321 1
xinput set-prop 10 341 0.2
xinput set-prop 10 329 1
xset -b
setxkbmap -option caps:escape
#pulseaudio --start
dex -a
#$HOME/.local/share/dwmblocks/dwmblocks &
exec dwm
