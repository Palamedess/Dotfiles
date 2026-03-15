tmpfilename="dim-lock"
tmpfile=$(find /tmp/"$tmpfilename".*)

if [[ -z "$tmpfile" ]]; then
  tmpfile=$(mktemp -t "$tmpfilename".XXX)
fi

if [[ "$1" == "undim" ]]; then
  if [[ $(cat "$tmpfile") == 1 ]]; then
    setsid uwsm-app -- nerdshade -longitude -123.113952 -latitude 49.260872 -loop &
  else
    killall hyprsunset
  fi
  exit
fi

sunset=$(pidof hyprsunset)

if [[ -z "$sunset" ]]; then
  setsid uwsm-app -- hyprsunset &
  echo "0" >"$tmpfile"
else
  killall nerdshade
  echo "1" >"$tmpfile"
fi

sleep 0.1
hyprctl hyprsunset gamma -40
