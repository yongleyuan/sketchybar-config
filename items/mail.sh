#!/usr/bin/env bash

MAIL_APP_NAME="Spark Desktop"

$BAR_NAME --set mail \
                icon="󰇮" \
                icon.color="0xff$BLUE" \
                icon.font.size=22 \
                update_freq=10 \
                click_script="open -a '$MAIL_APP_NAME'" \
                script="$PLUGIN_DIR/mail.sh"

