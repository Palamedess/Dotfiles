#!/bin/bash

tui_app="$1"

rules="[workspace special; tag +singleton_float]"

match=$(hyprctl -j clients | jq -r '.[] | select(.class == "kitty" and .title == "'$tui_app'" and .tags.[] == "singleton_float*") | {pid: .pid, workspace: .workspace.name}')

app_pid=$(echo "$match" | jq -r '.pid')
workspace=$(echo "$match" | jq -r '.workspace')

if [[ -z "$app_pid" ]]; then
  setsid uwsm-app -- hyprctl dispatch exec "$rules uwsm-app -- kitty $tui_app"
elif [[ "$workspace" == "special:special" && -n "$app_pid" ]]; then
  setsid uwsm-app -- hyprctl dispatch togglespecialworkspace
  if [[ $(hyprctl -j workspaces | jq -r '.[] | select(.name == "special:special") | .windows') -le 1 ]]; then
    kill "$app_pid"
  fi
else
  setsid uwsm-app -- hyprctl dispatch focuswindow "pid:$app_pid"
fi
