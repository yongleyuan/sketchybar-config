#!/usr/bin/env bash
  
DEVICES_HEADPHONE="$(system_profiler SPBluetoothDataType -json -detailLevel basic 2>/dev/null | jq -rc '.SPBluetoothDataType[0].device_connected[] | select ( .[] | .device_minorType == "Headphones")' 2>/dev/null | jq '.[]')"
DEVICES_HEADSET="$(system_profiler SPBluetoothDataType -json -detailLevel basic 2>/dev/null | jq -rc '.SPBluetoothDataType[0].device_connected[] | select ( .[] | .device_minorType == "Headset")' 2>/dev/null | jq '.[]')"
if [ "$DEVICES_HEADPHONE" != "" ]; then
  $BAR_NAME --set $NAME icon="󱡏" drawing=on
elif [ "$DEVICES_HEADSET" != "" ]; then
  $BAR_NAME --set $NAME icon="" drawing=on
else
  $BAR_NAME --set $NAME drawing=off
fi

