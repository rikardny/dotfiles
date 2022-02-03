#!/bin/bash
CURR=$(cat ~/.config/oled/current)

if [[ $CURR == "1.0" ]]; then
	echo cool
elif [[ $CURR == "0.9" ]]; then
	echo 1.0 > ~/.config/oled/current
else
	INT=${CURR:(-1)}
	INT=$((INT+1))
	echo 0.$INT > ~/.config/oled/current
fi

NEW=$(cat ~/.config/oled/current)
xrandr --output eDP-1-1 --brightness ${NEW}
