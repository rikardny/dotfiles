#!/bin/sh
xrandr --output DP-0 --off \
       --output DP-1 --primary --mode 3840x2160 --pos 0x0 --rotate normal \
       --output HDMI-0 --off \
       --output eDP-1-1 --mode 3840x2160 --pos 0x2160 --rotate normal

i3-msg '[workspace="1"]' move workspace to output DP-1
