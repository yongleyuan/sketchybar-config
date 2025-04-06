#!/usr/bin/env bash

OPENED=$(ps aux | grep -v grep | grep -ci "Spark Desktop")

if [[ $OPENED -eq 0 ]]; then
  $BAR_NAME --set $NAME drawing=off

else
  $BAR_NAME --set $NAME drawing=on

  COUNT=$($HOME/.config/$BAR_NAME/scripts/notification.sh "Spark Desktop")

  if [[ $COUNT -lt 1 ]]; then
    $BAR_NAME --set $NAME label.drawing=off icon.padding_right=8
  else
    $BAR_NAME --set $NAME label.drawing=on label="${COUNT}" icon.padding_right=3
  fi
fi

