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
  #export FZF_ALT_C_COMMAND='find .'
fi

source ~/.config/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
bindkey "^p" fzf-cd-widget

function _nvim {
    zle push-input
    BUFFER='nvim .'
    zle accept-line
}

zle -N _nvim
bindkey '^j' _nvim

function _vifm {
    zle push-input
    BUFFER='vicd .'
    zle accept-line
}

zle -N _vifm
bindkey '^f' _vifm

# ~/.zshrc

#colorscript random
vicd()
{
    local dst="$(command vifm --choose-dir - "$@")"
    if [ -z "$dst" ]; then
        echo 'Directory picking cancelled/failed'
        return 1
    fi
    cd "$dst"
}

plugins=(git
zsh-autosuggestions
zsh-syntax-highlighting
)

eval "$(starship init zsh)"
