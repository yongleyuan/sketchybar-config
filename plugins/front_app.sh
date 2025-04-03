#!/usr/bin/env bash

if [ "$SENDER" = "front_app_switched" ]; then
  $BAR_NAME --set "$NAME" label="$INFO"
fi

