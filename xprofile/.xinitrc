#!/bin/sh

# [ -f /etc/xprofile ] && . /etc/xprofile
# [ -f ~/.xprofile ] && . ~/.xprofile
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

#feh --bg-fill --randomize ~/.wallpaper/*
# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

#Section "Files"
    #FontPath "/usr/share/fonts/nerd-fonts-complete/"
#EndSection

#setxkbmap -model pc105 -layout us,us -variant dvorak, -option grp: win_space_toggle
picom --experimental-backends --backend glx -b &
xmobar ~/.config/xmobar/.xmobarrc &
#nitrogen --restore &

# key repeat speed
xset r rate 200 90 &


exec xmonad
