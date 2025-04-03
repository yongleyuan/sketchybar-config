#!/usr/bin/env bash

if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
    $BAR_NAME --set $NAME label.highlight=on label.font.size=18
else
    $BAR_NAME --set $NAME label.highlight=off label.font.size=15
fi

