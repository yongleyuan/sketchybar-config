#!/usr/bin/env bash

$BAR_NAME --add item aerospace.label left \
	  --set aerospace.label \
                icon="" \
                icon.font.size=15 \
                icon.padding_right=0 \
                icon.color="0xff$LAVENDER" \
                label.drawing=off

sids1=("Y" "U" "I" "O" "P")
for sid in ${sids1[@]}; do
  $BAR_NAME --add item aerospace.$sid left \
            --subscribe aerospace.$sid aerospace_workspace_change \
            --set aerospace.$sid \
                  background.padding_right=10 \
                  icon.drawing=off \
                  padding_left=0 \
                  padding_right=0 \
                  label="$sid" \
                  label.padding_left=8 \
                  label.padding_right=8 \
                  label.color="0xaa$LAVENDER" \
                  label.highlight_color="0xffffffff" \
                  click_script="aerospace workspace $sid" \
                  script="$PLUGIN_DIR/aerospace.sh $sid"
done

$BAR_NAME --add bracket spaces '/aerospace\..*/' \
          --set spaces \
                background.height=24 \
                background.corner_radius=5 \
                background.drawing=on \
                background.border_width=0 \
                background.padding_left=0 \
                background.padding_right=0

