#/bin/bash

iconPath=$HOME/media/wallpapers/icons/gyate
randomIcon=$(shuf -n1 -e $iconPath/*)

scrot -s /tmp/screenshot-$(date '+%d-%b-%Y_%H-%M').png -e 'xclip -selection clipboard -t "image/png" < $f'
notify-send -i $randomIcon -u critical "Screenshot successful!" "Image copied to clipboard"

