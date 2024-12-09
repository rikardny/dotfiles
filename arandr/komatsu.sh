#!/bin/sh
xrandr 	--output eDP-1 --primary --mode 1920x1200 --pos 3840x0 --rotate normal \
	--output DP-1-3.1 --mode 1920x1200 --pos 1920x0 --rotate normal --primary \
	--output DP-1-3.3 --mode 1920x1200 --pos 0x0 --rotate normal 
i3-msg workspace 4
i3-msg move workspace to output primary
i3-msg workspace 1 
i3-msg move workspace to output left
i3-msg workspace 10
i3-msg move workspace to output right
