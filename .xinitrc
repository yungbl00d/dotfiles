xinput set-prop 10 321 1
xinput set-prop 10 333 0.2
xinput set-prop 10 313 1
setxkbmap -option caps:escape
#pulseaudio --start
dex -a
#$HOME/.local/share/dwmblocks/dwmblocks &
exec dwm
