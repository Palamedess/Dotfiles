#!/usr/bin/env bash

export HISTFILE="$XDG_STATE_HOME"/zsh/history
export CARGO_HOME="XDG_DATA_HOME"/cargo

export XDG_CONFIG_HOME="$HOME"/.config
export XDG_CACHE_HOME="$HOME"/.cache
export XDG_STATE_HOME="$HOME"/.local/state
export XDG_DATA_HOME="$HOME"/.local/share

if command -v wslinfo &>/dev/null; then
  export GALLIUM_DRIVER=d3d12
  export MESA_D3D12_DEFAULT_ADAPTER_NAME=NVIDIA
fi
