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