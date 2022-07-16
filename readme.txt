### Archlinux Instalation ###

- boot from pendrive and run archinstall
- add apps: git stow neovim vifm curl kitty xorg xorg-init dmenu picom zsh xmonad xmobar xmonad-contrib starship nvidia scrot base-devel fzf xclip feh bat
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
