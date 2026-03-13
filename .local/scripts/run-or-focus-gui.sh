#!/bin/bash

gui_app="$1"

rules="[workspace special; tag +singleton_float]"

match=$(hyprctl -j clients | jq -r '.[] | select(.tags.[] == "singleton_float*") | select(.class | test("'$gui_app'"; "i")) | {pid: .pid, workspace: .workspace.name}')
echo "$match"

app_pid=$(echo "$match" | jq -r '.pid')
workspace=$(echo "$match" | jq -r '.workspace')

if [[ -z "$app_pid" ]]; then
  setsid uwsm-app -- hyprctl dispatch exec "$rules uwsm-app -- $gui_app"
elif [[ "$workspace" == "special:special" && -n "$app_pid" ]]; then
  setsid uwsm-app -- hyprctl dispatch togglespecialworkspace
  if [[ "$(hyprctl -j workspaces | jq -r '.[] | select(.name == "special:special") | .windows')" -le 1 ]]; then
    kill "$app_pid"
  fi
else
  setsid uwsm-app -- hyprctl dispatch focuswindow "pid:$app_pid"
fi
