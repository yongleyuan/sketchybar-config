#!/usr/bin/env bash

IP=$(scutil --nwi | grep address | sed 's/.*://' | tr -d ' ' | head -1)
WIFI=$(ipconfig getsummary $(networksetup -listallhardwareports | awk '/Hardware Port: Wi-Fi/{getline; print $2}') | awk -F ' SSID : ' '/ SSID : / {print $2}')
VPN=$(scutil --nwi | grep -m1 'utun' | awk '{ print $1 }')

if [[ $WIFI == "" ]]; then
    ICON="󰖪"
    WIFI="Unconnected"
elif [[ $VPN != "" ]]; then
    ICON="󱚿"
elif [[ $IP != "" ]]; then
    ICON="󰖩"
else
    ICON="󱛅"
fi

$BAR_NAME --set $NAME \
                icon=$ICON

