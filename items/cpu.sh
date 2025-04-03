#!/usr/bin/env bash

$BAR_NAME -m --set cpu_percent \
                   label.font.size=10 \
                   icon.drawing=off \
                   y_offset=6 \
                   label.padding_right=0 \
                   background.padding_right=0 \
                   update_freq=5 \
                   width=0 \
                   script="$PLUGIN_DIR/cpu.sh" \

$BAR_NAME -m --set cpu_label \
                   label="CPU" \
                   label.font.size=10 \
                   label.color="0xff$ROSEWATER" \
                   label.padding_left=0 \
                   background.padding_left=0 \
                   icon.drawing=off \
                   y_offset=6 \
                   width=0 \

