https://github.com/adi1090x/rofi
https://www.reddit.com/r/hyprland/comments/120s37x/is_it_possible_to_show_a_miniature_of_all_the/

open vim with telescope open

# VIA KEYBOARD PERMISSION
sudo chmod a+rw /dev/hidraw3

### SCREEN BRIGHT ###
gummy start
gummy -b 30
gummy -t 4200

### NVIM ###
if vim error :TSInstall all

### PACMAN ###

# CLI
sudo rm -r dir

# update
sudo pacman -Syu
sudo pacman-key --refresh-keys

# clean cache 
sudo pacman -Sc 

# uninstall package
sudo pacman -Rcns <package>

# vim DBUI
postgresql://
postgresql://localhost
postgresql://localhost:5432
postgresql://localhost/mydb
postgresql://user@localhost
postgresql://user:secret@localhost
postgresql://other@localhost/otherdb?connect_timeout=10&application_name=myapp
postgresql://localhost/mydb?user=other&password=secret


### Vim shorts ###

:%s/foo/bar/g replace all words
:s/foo/bar/g replace in all line

ctrl-r-" paste on command line

* search next word
# search previous 
n next word in search
N previous word in search

Git changes
] o [ + c
g; o g,
 
### Archlinux Instalation ###

- boot from pendrive and run archinstall
- add apps: 
git stow neovim vifm curl kitty xorg xorg-init dmenu picom zsh
xmonad xmobar xmonad-contrib starship nvidia scrot base-devel fzf xclip feh bat

- install chrome
- run xorg with "startx"
- clone .dotfiles
- stow .dotfiles
- install nvm and node
- install vim-plug
- open nvim and run PlugInstall
- set zsh default: 
    - check shells: chsh -l
    - set default: chsh -s /usr/bin/zsh
- install ly (make, service, make xinitrc executable)
- install yay
- install colorscript 
- java, gradle, yay gitmux
playerctl
ripgrep

hypr
yay hyprland-git
yay -S gdb ninja gcc cmake meson libxcb xcb-proto xcb-util xcb-util-keysyms libxfixes libx11 libxcomposite xorg-xinput libxrender pixman wayland-protocols cairo pango seatd libxkbcommon xcb-util-wm xorg-xwayland libinput libliftoff libdisplay-info cpio
yay -S hyprpicker-git
pacman -S wl-clipboard
pacman -S xdg-desktop-portal-hyprland
pacman -S mako

/etc/modprobe.d/nvidia.conf
options nvidia-drm modeset=1

/usr/share/wayland-sessions/hyprland.desktop
Exec=env WLR_NO_HARDWARE_CURSORS=1 Hyprland

waybar
wofi
wev to know keys

spotify
obs-studio
vlc
yarn
nvm
nextjs-nodejs
google-chrome
brave
discord
GIMP
Slack
code
docker


pendiente:
- image reader
