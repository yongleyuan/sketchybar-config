#!/usr/bin/env bash

$BAR_NAME --subscribe input input_change \
          --set input \
                padding_left=0 \
                padding_right=12 \
                label.drawing=off \
                icon="" \
                icon.color="0xfffbf1c7" \
                icon.drawing=off \
                background.drawing=off \
                script="$PLUGIN_DIR/input.sh"

