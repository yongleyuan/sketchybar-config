#!/usr/bin/env bash

$BAR_NAME -m --set ram_percent \
                   label.font.size=10 \
                   icon.drawing=off \
                   y_offset=-6 \
                   update_freq=5 \
                   label.padding_right=0 \
                   background.padding_right=0 \
                   script="$PLUGIN_DIR/ram.sh"

$BAR_NAME -m --set ram_label \
                   label="RAM" \
                   label.font.size=10 \
                   label.color="0xff$FLAMINGO" \
                   icon.drawing=off \
                   y_offset=-6 \
                   label.padding_left=0 \
                   background.padding_left=5

