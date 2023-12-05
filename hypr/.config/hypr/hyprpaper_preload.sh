#!/bin/bash

preload_wallpaper() {

    monitor="HDMI-A-1"

    wallpaper_dir="$HOME/images/wallpaper/dracula"

    wallpapers=$(find "$wallpaper_dir" -type f | sort -R )

    for wallpaper in $wallpapers; do
        preload_string+="preload = "$wallpaper"\n"
        wallpaper_string+="wallpaper = $monitor, $wallpaper\n"
    done

    echo -en "$preload_string$wallpaper_string" > ~/.config/hypr/hyprpaper.conf

}

preload_wallpaper
