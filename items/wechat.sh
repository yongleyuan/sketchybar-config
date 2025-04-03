#!/usr/bin/env bash

$BAR_NAME --set wechat \
                icon="󰘑" \
                icon.color="0xff$GREEN" \
                icon.font.size=26 \
                update_freq=10 \
                click_script="open -a /Applications/WeChat.app/" \
                script="$PLUGIN_DIR/wechat.sh"

