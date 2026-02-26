#!/usr/bin/env bash

$BAR_NAME --set mail \
                icon="󰇮" \
                icon.color="0xff$BLUE" \
                icon.font.size=22 \
                update_freq=10 \
                click_script="open -a Mail" \
                script="$PLUGIN_DIR/mail.sh"

