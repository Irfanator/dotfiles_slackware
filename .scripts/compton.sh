#!/bin/sh

# Terminate already running bar instances
killall -q compton

# Wait until the processes have been shut down
while pgrep -x compton >/dev/null; do sleep 1; done

# Run Compton
compton --backend glx --config ~/.compton.conf

echo "Compton running.."
