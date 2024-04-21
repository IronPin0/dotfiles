#!/bin/sh

waybar()
{
    echo "waybar"
    cp -rf ./waybar ~/.config/
}

hypr()
{
    echo "hypr"
    cp -rf ./hypr ~/.config/
}

sddm()
{
    echo "sddm"
    sudo cp -rf ./sddm /usr/lib/
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