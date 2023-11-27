https://github.com/adi1090x/rofi
https://www.reddit.com/r/hyprland/comments/120s37x/is_it_possible_to_show_a_miniature_of_all_the/

open vim with telescope open

# VIA KEYBOARD PERMISSION
sudo chmod a+rw /dev/hidraw3

# INSTALL SHH KEYS
cp /path/to/my/key/id_rsa ~/.ssh/id_rsa
cp /path/to/my/key/id_rsa.pub ~/.ssh/id_rsa.pub
# change permissions on file
sudo chmod 600 ~/.ssh/id_rsa
sudo chmod 600 ~/.ssh/id_rsa.pub
# start the ssh-agent in the background
eval $(ssh-agent -s)
# make ssh agent to actually use copied key
ssh-add ~/.ssh/id_rsa

### SCREEN BRIGHT ###
gummy start
gummy -b 30
gummy -t 4200


### PACMAN ###

# update
sudo pacman -Syu
sudo pacman-key --refresh-keys

# clean cache 
sudo pacman -Sc 

# uninstall package
sudo pacman -Rcns <package>


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
