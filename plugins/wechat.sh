#!/usr/bin/env bash

OPENED=$(ps aux | grep -v grep | grep -ci "wechat")

if [[ $OPENED -eq 2 ]]; then # not sure why it is 2
  $BAR_NAME --set $NAME drawing=off

else
  $BAR_NAME --set $NAME drawing=on

  COUNT=$($HOME/.config/$BAR_NAME/scripts/notification.sh 微信)

  if [[ $COUNT -lt 1 ]]; then
    $BAR_NAME --set $NAME label.drawing=off icon.padding_right=8
  else
    $BAR_NAME --set $NAME label.drawing=on label="${COUNT}" icon.padding_right=3
  fi
fi
