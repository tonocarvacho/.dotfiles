# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
#bindkey -v
#
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/tono/.zshrc'

autoload -Uz compinit
compinit

export QT_QPA_PLATFORM=wayland
export QT_QUICK_BACKEND=software

export GTK_THEME=Adwaita:dark, 
export GTK2_RC_FILES=/usr/share/themes/Adwaita-dark/gtk-2.0/gtkrc
export QT_STYLE_OVERRIDE=adwaita-dark

export PATH=$PATH:/opt/gradle/gradle-7.6.3/bin

# ~/.tmux/plugins
export PATH=~/.tmux/plugins/t-smart-tmux-session-manager/bin:$PATH
#export T_SESSION_NAME_INCLUDE_PARENT="true"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#export FONTCONFIG_FILE=$HOME/.config/fontconfig/fonts.conf

if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files'
  export FZF_DEFAULT_OPTS='-m --height 50% --border'
  #export FZF_ALT_C_COMMAND='find .'
fi

#alias tvf='tmux new-window vifm ~'
alias k='tmux kill-server'
alias l='tmux list-sessions'
#alias t='~/.tmux/plugins/t-smart-tmux-session-manager/bin'
#alias e='~/.local/bin/tmux-sessionizer ~/.dotfiles'
alias s='sudo vifm'

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
    BUFFER='vifm .'
    zle accept-line
}

zle -N _vifm 
bindkey '^f' _vifm 

function _tmux {
    zle push-input
    BUFFER='t'
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

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
