#!/bin/bash

special=1
handle() {
  if [ "$special" == 1 ]; then

    if [[ "$1" == "fullscreen>>0" ]]; then
      hyprctl dispatch fullscreen
    fi

    if [[ "$1" == "activespecial>>,"* ]]; then
      special=0
      echo "Exiting special workspace"
    fi

  fi

  if [[ "$1" == "activespecial>>special:"* ]]; then
    special=1
    echo "Enterig special workspace"
  fi
}

socat -U - UNIX-CONNECT:$XDG_RUNTIME_DIR/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock | while read -r line; do handle "$line"; done
