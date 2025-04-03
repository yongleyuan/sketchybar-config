#!/usr/bin/env bash

PERCENTAGE="$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)"
CHARGING="$(pmset -g batt | grep 'AC Power')"

if [ "$PERCENTAGE" = "" ]; then
  exit 0
fi

case "${PERCENTAGE}" in
  100) ICON="󰁹" COLOR="0xff6abd43"
    ;;
  9[0-9]) ICON="󰂂" COLOR="0xff6abd43"
    ;;
  8[0-9]) ICON="󰂁" COLOR="0xffafd235"
    ;;
  7[0-9]) ICON="󰂀" COLOR="0xffafd235"
    ;;
  6[0-9]) ICON="󰁿" COLOR="0xffafd235"
    ;;
  5[0-9]) ICON="󰁾" COLOR="0xffafd235"
    ;;
  4[0-9]) ICON="󰁽" COLOR="0xfff7941c"
    ;;
  3[0-9]) ICON="󰁼" COLOR="0xfff7941c"
    ;;
  2[0-9]) ICON="󰁻" COLOR="0xfff7941c"
    ;;
  1[0-9]) ICON="󰁺" COLOR="0xfff7941c"
    ;;
  *) ICON="󰂎" COLOR="0xffed1b25"
esac

if [[ "$CHARGING" != "" ]]; then
  ICON="󱐋$ICON" COLOR="0xff50fa7b"
fi

$BAR_NAME --set "$NAME" icon="$ICON" icon.color="$COLOR"

