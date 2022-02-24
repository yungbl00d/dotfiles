xinput set-prop 10 323 1
xinput set-prop 10 343 0.2
xinput set-prop 10 331 1
xset -b
setxkbmap -option caps:escape
#pulseaudio --start
dex -a
#$HOME/.local/share/dwmblocks/dwmblocks &
exec dwm
