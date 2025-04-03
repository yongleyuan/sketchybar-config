#!/usr/bin/env bash

STATE="$(echo "$INFO" | jq -r '.state' 2>/dev/null)"

if [ "$SENDER" = "media_close" ] | [ "$STATE" != "playing" ]; then
    $BAR_NAME --set $NAME drawing=off popup.drawing=off
else
  $BAR_NAME --set $NAME \
                  drawing=on

  MEDIA_APP="$(echo "$INFO" | jq -r '.app')"
  MEDIA_TITLE="$(echo "$INFO" | jq -r '.title')"
  MEDIA_ARTIST="$(echo "$INFO" | jq -r '.artist')"

  $BAR_NAME --set $NAME.app \
                  label="$MEDIA_APP" \
                  click_script="open -a $MEDIA_APP.app"
  $BAR_NAME --set $NAME.title \
                  label="$MEDIA_TITLE"
  $BAR_NAME --set $NAME.artist \
                  label="$MEDIA_ARTIST"
fi

