#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

# Launch bar1 and bar2
echo "---" | tee -a /tmp/primary.log /tmp/secondary_home.log /tmp/secondary_work1.log /tmp/secondary_work1.log
polybar primary 2>&1 | tee -a /tmp/polybar_primary.log & disown
polybar secondary_home 2>&1 | tee -a /tmp/secondary_home.log & disown
polybar secondary_work1 2>&1 | tee -a /tmp/secondary_work1.log & disown
polybar secondary_work2 2>&1 | tee -a /tmp/secondary_work2.log & disown

echo "Bars launched..."

