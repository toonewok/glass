#!/bin/bash
ricename=$1
action=$2
rofivar=$3
hyprpath=$HOME/.config/hypr/
waypath=$HOME/.config/waybar/
projpath=$HOME/projects/rice/$ricename
confpath=$projpath/dotconfig

if [ "$action" == "save" ];
  then
	  echo saving...
	  cp ~/.config/alacritty/alacritty.toml ~/.config/alacritty/alacritty.toml.$ricename
	  cp ~/.config/cava/config ~/.config/cava/config.$ricename
	  cp ~/.config/hypr/hyprland.conf ~/.config/hypr/hyprland.conf.$ricename
	  cp ~/.config/hypr/hyprpaper.conf ~/.config/hypr/hyprpaper.conf.$ricename
	  cp ~/.config/rofi/config.rasi ~/.config/rofi/config.rasi.$ricename
	  cp ~/.config/waybar/config.jsonc ~/.config/waybar/config.jsonc.$ricename
	  cp ~/.config/waybar/modules.jsonc ~/.config/waybar/modules.jsonc.$ricename
	  cp ~/.config/waybar/style.css ~/.config/waybar/style.css.$ricename
	  cp ~/.config/nvim/init.vim ~/.config/nvim/init.vim.$ricename
	  cp ~/.zshrc ~/.zshrc.$ricename
	  cp ~/.config/fastfetch/config.jsonc ~/.config/fastfetch/config.jsonc.$ricename
	  cp ~/.config/vesktop/themes/ClearVision-v7-BetterDiscord.theme.css ~/.config/vesktop/themes/ClearVision-v7-BetterDiscord.theme.css.$ricename

elif [ "$action" == "restore" ];
  then
	echo restoring...
	cat ~/.config/alacritty/alacritty.toml.$ricename > ~/.config/alacritty/alacritty.toml
	cat ~/.config/cava/config.$ricename > ~/.config/cava/config
	cat ~/.config/hypr/hyprland.conf.$ricename > ~/.config/hypr/hyprland.conf
	cat ~/.config/hypr/hyprpaper.conf.$ricename > ~/.config/hypr/hyprpaper.conf
	cat ~/.config/rofi/config.rasi.$ricename > ~/.config/rofi/config.rasi
	cat ~/.config/waybar/config.jsonc.$ricename > ~/.config/waybar/config.jsonc
	cat ~/.config/waybar/modules.jsonc.$ricename > ~/.config/waybar/modules.jsonc
	cat ~/.config/waybar/style.css.$ricename > ~/.config/waybar/style.css
	cat ~/.config/nvim/init.vim.$ricename > ~/.config/nvim/init.vim
	cat ~/.zshrc.$ricename > ~/.zshrc
	cat ~/.config/fastfetch/config.jsonc.$ricename > ~/.config/fastfetch/config.jsonc
	cat ~/.config/vesktop/themes/ClearVision-v7-BetterDiscord.theme.css.$ricename > ~/.config/vesktop/themes/ClearVision-v7-BetterDiscord.theme.css


	pkill waybar
	pkill hyprpaper

	nohup waybar >/dev/null 2>&1 &
	nohup hyprpaper >/dev/null 2>&1 &

elif [ "$action" == "refresh" ];
  then
	
	pkill waybar
	pkill hyprpaper

	nohup waybar >/dev/null 2>&1 &
	nohup hyprpaper >/dev/null 2>&1 &


elif [ "$action" == "git" ];
	then
	mkdir -p $confpath/alacritty/themes
	mkdir -p $confpath/cava
	mkdir -p $confpath/hypr
	mkdir -p $confpath/rofi/themes
	mkdir -p $confpath/waybar
	mkdir -p $confpath/fastfetch
	echo saving dots in git path at $projpath
	cp ~/.config/alacritty/alacritty.toml.$ricename $confpath/alacritty/alacritty.toml
	cp ~/.config/alacritty/themes/$ricename.toml $confpath/alacritty/themes
	cp ~/.config/cava/config.$ricename $confpath/cava/config
	cp ~/.config/hypr/hyprland.conf.$ricename $confpath/hypr/hyprland.conf
	cp ~/.config/hypr/hyprpaper.conf.$ricename $confpath/hypr/hyprpaper.conf
	cp ~/.config/rofi/config.rasi.$ricename $confpath/rofi/config.rasi
	cp -R ~/.config/rofi/themes/$rofivar $confpath/rofi/themes
	cp ~/.config/waybar/config.jsonc.$ricename $confpath/waybar/config.jsonc
	cp ~/.config/waybar/modules.jsonc.$ricename $confpath/waybar/modules.jsonc
	cp ~/.config/waybar/style.css.$ricename $confpath/waybar/style.css
	cp ~/.config/fastfetch/config.jsonc.$ricename $confpath/fastfetch/config.jsonc




fi
