export HISTFILE=${XDG_DATA_HOME:-$HOME/.local/share}/zsh/zsh_history
export LESSHISTFILE="$XDG_STATE_HOME"/less/history

export XDG_CONFIG_HOME="$HOME"/.config
export XDG_CACHE_HOME="$HOME"/.cache
export XDG_STATE_HOME="$HOME"/.local/state
export XDG_DATA_HOME="$HOME"/.local/share

export CARGO_HOME="$XDG_DATA_HOME"/cargo
export GOPATH="$XDG_DATA_HOME"/go
export NUGET_PACKAGEs="$XDG_CACHE_HOME"/NuGetPackages

export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS
--color=fg:#4c4c57,bg:#111111,hl:#6d748c,gutter:#111111
--color=fg+:#C2C2CF,bg+:#191919,hl+:#6d748c
--color=info:#b5b3a5,prompt:#6A6A7A,pointer:#817882
--color=marker:#858599,spinner:#858599,header:#858599"

export EDITOR=nvim
export VISUAL=nvim
export SUDO_EDITOR=nvim
