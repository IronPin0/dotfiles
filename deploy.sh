#!/bin/sh

waybar()
{
    echo "waybar"
    cd ~/workspace/dotfiles
    cp -rf ./waybar ~/.config/
}

hypr()
{
    echo "hypr"
    cd ~/workspace/dotfiles
    cp -rf ./hypr ~/.config/
}

sddm()
{
    echo "sddm"
    cd ~/workspace/dotfiles
    sudo cp -rf ./sddm/sddm.conf.d /usr/lib/sddm/
    sudo cp -rf ./sddm/faces /usr/share/sddm/
}

install()
{
    echo "install"
    cd ~/workspace
    sudo pacman -S --needed git base-devel 
    git clone https://github.com/IronPin0/sddm-chili.git    
    git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
    yay -S polkit-kde-agent mako xdg-desktop-portal-hyprland waybar qt5-quickcontrols qt5-graphicaleffects brave-bin visual-studio-code-bin 
    
}

if [ $# -eq 0 ]
then
    echo "No arguments supplied"
    exit 1
fi

if [ $1 == "-a" ]
then
    waybar
    hypr
    sddm
    exit 0
fi

if [ $1 == "-i" ]
then
    install
    waybar
    hypr
    sddm
    exit 0
fi

echo "Arguments not valids"
