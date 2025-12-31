#!/usr/bin/env bash

if [ "$SENDER" = "front_app_switched" ]; then
  $BAR_NAME --set "$NAME" label="$INFO"
  LAYOUT=$(aerospace list-windows --workspace focused --format "%{app-name} %{window-layout}" | grep "${INFO}" | awk '{print $2}')
  if [ $LAYOUT = "floating" ]; then
    $BAR_NAME --set "$NAME" icon=""
  else
    $BAR_NAME --set "$NAME" icon=""
  fi
fi

