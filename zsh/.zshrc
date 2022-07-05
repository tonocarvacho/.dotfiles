# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/tono/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files'
  export FZF_DEFAULT_OPTS='-m --height 50% --border'
fi

source ~/.config/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh
bindkey "^P" fzf-cd-widget

function _nvim {
    zle push-input
    BUFFER='nvim'
    zle accept-line
}

zle -N _nvim
bindkey '^h' _nvim

#function vifm {
    #zle push-input
    #BUFFER='vifm'
    #zle accept-line
#}

#zle -N vifm
#bindkey '^t' vifm
# ~/.zshrc

#colorscript random

eval "$(starship init zsh)"
