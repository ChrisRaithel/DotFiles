#!/bin/bash
#!usr/bin/env sh

# Terminate already running instances
killall -q polybar

# Wait until processes have been shutdown
while pgrep -u $UID -x polybar >/dev/null; do sleep 0.5; done

# Launch bar
polybar mybar &

echo "The bar is launched, my dude"
