#!/bin/sh
xrandr 	--output eDP-1 --primary --mode 1920x1200 --pos 1920x0 --rotate normal \
	--output HDMI-1-0 --mode 1920x1200 --pos 0x0 --rotate normal --primary
notify-send xrandr "Changed to HDMI profile"
i3-msg workspace 
