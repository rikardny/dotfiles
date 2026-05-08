#!/bin/bash

FIFO=/tmp/swaybar_update
[[ -p $FIFO ]] || mkfifo $FIFO
exec 3<>$FIFO  # keep both ends open so writes from sway never block

print_status() {
    vol=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ 2>/dev/null | awk '{
        muted = ($3 == "[MUTED]") ? " MUTE" : ""
        printf "VOL %d%%%s", $2 * 100, muted
    }')

    bri=$(light -G 2>/dev/null | awk '{printf "BRI %.0f%%", $1}')

    ssid=$(nmcli -t -f active,ssid dev wifi 2>/dev/null | grep '^yes' | cut -d: -f2)
    wifi=${ssid:-disconnected}

    bat_cap=$(cat /sys/class/power_supply/BAT0/capacity 2>/dev/null)
    bat_status=$(cat /sys/class/power_supply/BAT0/status 2>/dev/null)
    bat_timeleft=$(upower -b | grep -i 'time' | awk '{print $4}')
    case "$bat_status" in
        Charging) bat_icon="+" ;;
        Full)     bat_icon="=" ;;
        *)        bat_icon="-" ;;
    esac

    echo "$vol | $bri | $wifi | BAT ${bat_cap}%${bat_icon} ${bat_timeleft}h | $(date +'%Y-%m-%d %H:%M')"
}

print_status

while true; do
    read -t 5 _ <&3 || true
    print_status
done
