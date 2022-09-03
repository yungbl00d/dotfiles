#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PATH="$HOME/.local/bin:$HOME/.local/share:$HOME/scripts/status:$HOME/scripts:$PATH"

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

pac_install() {
	sudo pacman -S "$1"
}
alias pac=pac_install
make_and_cd() {
	mkdir $1 && cd $1
}
alias mkcd=make_and_cd
alias pls='sudo $(fc -ln -1)'
alias smci="sudo make clean install"
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"
alias dotst="dotfiles status -uno"
alias vi="nvim"

#eval "$(thefuck --alias)"
# dwmswallow $WINDOWID -c Zathura
# dwmswallow $WINDOWID -c mpv
# dwmswallow $WINDOWID -c feh

shopt -s autocd
set -o vi
set show-mode-in-prompt on

alias pacfind="pacman -Slq | fzf --multi --preview 'pacman -Si {1}' | xargs -ro sudo pacman -S"
alias aurfind="paru -Slq | fzf --multi --preview 'paru -Si {1}' | xargs -ro paru -S"
alias wifi="stalonetray & nm-applet"
alias shutup="sudo rmmod pcspkr"
eval `opam env`
