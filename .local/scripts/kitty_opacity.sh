#!/bin/bash

pids=$(pidof kitty)

for pid in $pids; do
  kitten @ set-background-opacity --to "unix:@mykitty-${pid}" --toggle -a 1.0
done

# Need to export this variable somewhere first
# if [[ "$OPAQUE_KITTY" == "YES" ]]; then
#   export OPAQUE_KITTY="NO"
# else
#   export OPAQUE_KITTY="YES"
# fi
