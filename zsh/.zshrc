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

export PATH=$PATH:/opt/gradle/gradle-7.6.3/bin
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files'
  export FZF_DEFAULT_OPTS='-m --height 50% --border'
  #export FZF_ALT_C_COMMAND='find .'
fi
alias tvf='tmux new-window -s vifm'
source $HOME/.config/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh
source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
bindkey "^p" fzf-cd-widget

function _nvim {
    zle push-input
    BUFFER='nvim .'
    zle accept-line
}

function set-title() {
  if [[ -z "$ORIG" ]]; then
    ORIG=$PS1
  fi
  TITLE="\[\e]2;$*\a\]"
  PS1=${ORIG}${TITLE}
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

function _tmux {
    zle push-input
    BUFFER='tmux-sessionizer'
    zle accept-line
}

zle -N _tmux 
bindkey '^e' _tmux 

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

#pokemon-colorscripts -r --no-title

precmd () {print -Pn "\e]0;%~\a"}

eval "$(starship init zsh)"
