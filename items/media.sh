#!/usr/bin/env bash

$BAR_NAME --add event media_close

$BAR_NAME --subscribe media \
                      media_change \
                      media_close \
          --set media \
                icon.color="0xff$SUBTEXT1" \
                icon="" \
                label.drawing=off \
                script="$PLUGIN_DIR/media.sh" \
                click_script="$BAR_NAME -m --set media popup.drawing=toggle" \
                updates=on \
                popup.blur_radius=5 \
                popup.background.drawing=on \
                popup.background.color="0x88$CRUST" \
                popup.background.border_width=2 \
                popup.background.border_color="0xff$SUBTEXT1" \
                popup.align=right


# Popup items
$BAR_NAME --add item media.app popup.media \
          --set media.app \
                icon="󰎄" \
                drawing=on

$BAR_NAME --add item media.title popup.media \
          --set media.title \
                icon="󱉺" \
                drawing=on

$BAR_NAME --add item media.artist popup.media \
          --set media.artist \
                icon="󰀆" \
                drawing=on

$BAR_NAME --add item media.close popup.media \
          --set media.close \
                icon="󰅗" \
                label="Close" \
                drawing=on \
                click_script="$BAR_NAME --trigger media_close"

