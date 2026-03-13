# Load and initialise completion system
zstyle :compinstall filename "$ZDOTDIR/.zshrc.zni"
autoload -Uz compinit
compinit -d "$ZCOMPCACHE/zcompdump"

# Load order matters!
# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "jeffreytse/zsh-vi-mode"
plug "Aloxaf/fzf-tab"
plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting"
#plug "zap-zsh/exa"  --Change to exa instead of lsd?

# zsh-newuser-install
# end of zsh-newuser-install

# Zap plugin config
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20

ZVM_CURSOR_STYLE_ENABLED=false
zvm_after_init_commands+=('[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh')

zstyle ':completion:*:git-checkout:*' sort false
zstyle ':completion:*:descriptions' format '[%d]'
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' menu no
#zstyle ':fzf-tab:*' fzf-flags --color=fg:1,fg+:2 --bind=tab:accept
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'lsd -1 --color=always $realpath'
zstyle ':fzf-tab:*' use-fzf-default-opts yes
zstyle ':fzf-tab:*' switch-group '<' '>'

# Load ZSH config
source $ZDOTDIR/zsh-aliases
source $ZDOTDIR/zsh-functions
source $ZDOTDIR/zsh-tty-col

type starship_zle-keymap-select >/dev/null || \
  eval "$(starship init zsh)"

eval "$(zoxide init zsh)"

# Starting Tmux on system startup
#if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
if command -v tmux &> /dev/null && [ -n "$TMUX" ]; then
  eval macchina -c "$XDG_CONFIG_HOME"/macchina/macchina-tmux.toml
else
  if [[ $((RANDOM % 30)) -eq 1 ]]; then
    eval earlfetch
  else
    eval fetch
  fi
fi
