# Load and initialise completion system
zstyle :compinstall filename "$ZDOTDIR/.zshrc.zni"
autoload -Uz compinit
compinit

# Load order matters!
# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "zap-zsh/supercharge"
plug "jeffreytse/zsh-vi-mode"
plug "Aloxaf/fzf-tab"
plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting"
#plug "zap-zsh/exa"  --Change to exa instead of lsd?

# zsh-newuser-install
HISTFILE=~/zsh/.histfile
HISTSIZE=1000
SAVEHIST=1000

setopt autocd extendedglob
bindkey -v
# end of zsh-newuser-install

# Zap plugin config
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20

ZVM_CURSOR_STYLE_ENABLED=false
zvm_after_init_commands+=('[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh')

# Load ZSH config
source $ZDOTDIR/zsh-aliases
source $ZDOTDIR/zsh-functions

# Starting Tmux on system startup
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  tmux
fi

type starship_zle-keymap-select >/dev/null || \
  eval "$(starship init zsh)"
