#!/bin/bash

set_wallpaper() {

    monitor="HDMI-A-1"

    wallpaper_dir="$HOME/images/wallpaper/dracula"

    files=($wallpaper_dir/*)

    random_file=("${files[RANDOM % ${#files[@]}]}")

    #echo "$monitor,$random_file"
    hyprctl hyprpaper wallpaper "$monitor,$random_file"

}

set_wallpaper
