#!/usr/bin/env bash

$BAR_NAME --set date \
                icon.drawing=off \
                update_freq=30 \
                label.font.size=17 \
                label.y_offset=0 \
                click_script="open -a Calendar.app" \
                script="$PLUGIN_DIR/date.sh"

