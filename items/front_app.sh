#!/usr/bin/env bash

$BAR_NAME --subscribe front_app front_app_switched layout_change \
          --set front_app \
                icon="" \
                icon.color="0xff$TEXT" \
                icon.font.size=14 \
                padding_left=6 \
                display=active \
                script="$PLUGIN_DIR/front_app.sh"

