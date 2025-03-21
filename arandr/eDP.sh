#!/bin/sh
xrandr --output eDP-1 --primary --mode 1920x1200 --pos 0x0 --rotate normal \
	--output DP-1 --off \
	--output DP-2 --off \
	--output DP-3 --off \
	--output HDMI-1 --off \
	--output HDMI-2 --off \
	--output HDMI-1-0 --off \
	--output DP-1-3.1 --off \
	--output DP-1-3.3 --off \
	--output DP-1-0 --off \
	--output DP-1-1 --off \
	--output DP-1-2 --off \
	--output DP-1-3 --off
notify-send xrandr "Changed to eDP profile"
