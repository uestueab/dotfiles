#!/bin/bash

#remove padding
sed -i "s/x: 20/x: 0/g" ~/.config/alacritty/alacritty.yml
sed -i "s/y: 30/y: 0/g" ~/.config/alacritty/alacritty.yml

# get the file the config file points to
# configFile=$(readlink -f ~/.config/alacritty/alacritty.yml)

#change background color for duration of vim 
# sed -i "s/background: '0x0a0b11'/background: '0x161821'/g" $configFile
