
export ZSH="$HOME/.oh-my-zsh"


ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh


export EDITOR='nvim'

export config_path=/home/bailey/.config


alias p="sudo pacman -S"
alias y="yay -S"
alias edit="nvim ~/.zshrc"
alias pipes="~/shellscripts/pipes.sh -c 3,4,5,6 -p 3 -r 4000"
alias clock="tty-clock -ctB -C6"
alias work="cd /run/media/bailey/USB\ DISK/Work/WIP; clear; ls"
alias send="~/shellscripts/works.sh"
alias down="~/shellscripts/workd.sh"
alias off="~/shellscripts/shutdown.sh"
alias nap="sleep 1; xset dpms force off"
alias sn="nvim ~/Documents/sysneeds"
alias crime="clear; sudo openvpn /etc/openvpn/client/client.conf"
alias uz="fastjar xvf"
alias wmnt="sudo mount /dev/sda3 ~/Windows; cd Windows/Users/dev/Desktop;"
alias uwmnt="cd; sudo umount /dev/sda3"
alias upc="sudo ~/shellscripts/updatecleanup.sh"
alias vh="nvim ~/.config/hypr/hyprland.conf"
alias ers="~/shellscripts/erswap.sh"
alias vmc="sudo ~/shellscripts/vmcopy.sh"
alias vmm="sudo ~/shellscripts/vmmnt.sh"
alias gtkfix="xhost si:localuser:root"
alias sffix="sudo sysctl kernel.split_lock_mitigate=0"
alias brcu="cp -R ~/.config/r2modmanPlus-local/BombRushCyberfunk/profiles/base/* /nvme/games/steam/steamapps/common/BombRushCyberfunk"
alias grvc="fim ~/Pictures/clrgrv.png"
alias reshade="~/shellscripts/reshade-linux.sh"
alias sdsync="~/shellscripts/sdsync.sh"
alias dq="~/shellscripts/quickdown.sh"
alias sq="~/shellscripts/quickup.sh"
alias globe="~/shellscripts/animation/globe.sh"
alias rice="~/shellscripts/riceswap.sh"
alias commit="git commit -a"
alias push="git push"
alias f="fastfetch"
alias cs="~/shellscripts/cs2.sh"
alias gi="~/shellscripts/gimp.sh"
alias tm="~/shellscripts/tekkeniconmove.sh"
alias poe="~/shellscripts/poetrade.sh"


###work aliases
alias j="clear; cd ~/work/Jesta; git checkout bailey-work; clear; ls; echo Jesta work...; echo ''; cat ~/work/workinggco/jesta"
alias we="nvim ~/Work/won/workingon"
alias wep="cd ~/Work/won; git commit -a -m 'update'; git push;"
alias help="cat ~/Projects/rice/tokyonightwork/help"
alias dv7="ssh -i ~/.ssh/id_billy bcrowe@dv7"
alias dv7t="ssh ramstst@dv7"
alias s80="ssh bcrowe@s80"
alias dv7ftp="sftp -i ~/.ssh/id_billy bcrowe@dv7"
alias s80ftp="sftp bcrowe@s80"
alias tstup="~/shellscripts/scriptdeploy.sh ramstst"
alias devup="~/shellscripts/scriptdeploy.sh ramsdev"
alias qaup="~/shellscripts/scriptdeploy.sh ramsqa"
alias prdup="~/shellscripts/scriptdeploy.sh ramsprd"
alias jesta="~/shellscripts/jesta.sh"
alias gpull="'ssh -i ~/.ssh/id_rsa' git pull"


eval "$(ssh-agent -s)" > /dev/null
ssh-add ~/.ssh/gitkey 2>/dev/null
ssh-add ~/.ssh/id_rsa 2>/dev/null
ssh-add ~/.ssh/id_ed25519 2>/dev/null
#fastfetch
#pfetch





export PATH=$PATH:/home/bailey/.spicetify
export XDG_CURRENT_DESKTOP=Hyprland
export XDG_SESSION_TYPE=wayland

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

###this is what executes your Hyprland, do not remove :) 
if [[ "$(tty)" == "/dev/tty1" ]]; then
    exec Hyprland &>/dev/null
fi
