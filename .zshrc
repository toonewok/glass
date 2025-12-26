
export ZSH="$HOME/.oh-my-zsh"


ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh


export EDITOR='nvim'

export config_path=/home/bailey/.config
alias v="nvim"
alias vh="nvim ~/.config/hypr/hyprland.conf"
alias p="sudo pacman -S"
alias y="yay -S"
alias help="cat ~/Documents/help"
alias edit="nvim ~/.zshrc"
alias pipes="~/shellscripts/pipes.sh -c 3,4,5,6 -p 3 -r 4000"
alias clock="tty-clock -ctB -C4"
alias upc="sudo ~/shellscripts/updatecleanup.sh"

alias rice="~/shellscripts/riceswap.sh"
#not sure you need this but better safe than sorry
alias gtkfix="xhost si:localuser:root"
#if you try to play sf6 online it will most likely lag, run this command
alias sffix="sudo sysctl kernel.split_lock_mitigate=0"
alias f="fastfetch"


export XDG_CURRENT_DESKTOP=Hyprland
export XDG_SESSION_TYPE=wayland


