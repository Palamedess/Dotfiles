monitor_names=$(hyprctl -j monitors | jq -r '[.[] | {"name": .name, "id": .id}] | sort_by(.id) | .[].name')
config_path="$XDG_CONFIG_HOME"/waybar

# remove possible stale temp configs
rm /tmp/waybar-config-*

# Config is taken from the default location and copied per monitor
# Sed matches the output line and replaces the contents to match the monitor
for monitor in $monitor_names; do
  cp "$config_path"/config.jsonc /tmp/waybar-config-"$monitor".jsonc
  sed -i 's/"output": \[.*\]/"output": ["'"$monitor"'"]/g' /tmp/waybar-config-"$monitor".jsonc
done

if [[ -n "$(pidof waybar)" ]]; then
  echo "Waybar already exists! Killing..."
  killall waybar
fi

temp_configs=$(fd 'waybar-config-(.*?).jsonc' /tmp)
echo "$temp_configs"

waybar_pids=()
for config in $temp_configs; do
  echo "Spawning with config: $config"
  eval exec setsid uwsm-app -- waybar -c "$config" >/dev/null &
  waybar_pids+=($!)
done

echo "${waybar_pids[*]}" >>/tmp/waybar.pid
