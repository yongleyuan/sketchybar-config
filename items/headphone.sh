#!/usr/bin/env bash

$BAR_NAME --set headphone \
                icon.color="0xff$YELLOW" \
                icon.font.size=17 \
                script="$PLUGIN_DIR/headphone.sh" \
                icon.padding_right=-10 \
                padding_right=-10 \
                update_freq=10

