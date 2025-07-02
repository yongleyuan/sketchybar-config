#!/usr/bin/env bash

$BAR_NAME --add item aerospace.label left \
	  --set aerospace.label \
                icon="" \
                icon.font.size=15 \
                icon.padding_right=0 \
                icon.color="0xff$LAVENDER" \
                label.drawing=off

ss=(1 2 3 4 5)
sids=("Y" "U" "I" "O" "P")
for s in ${ss[@]}; do
  sid=${sids[$(($s-1))]}
  $BAR_NAME --add item aerospace.$s left \
            --subscribe aerospace.$s aerospace_workspace_change \
            --set aerospace.$s \
                  background.padding_right=10 \
                  icon.drawing=off \
                  padding_left=0 \
                  padding_right=0 \
                  label="$sid" \
                  label.padding_left=8 \
                  label.padding_right=8 \
                  label.color="0xaa$LAVENDER" \
                  label.highlight_color="0xffffffff" \
                  click_script="aerospace workspace $s" \
                  script="$PLUGIN_DIR/aerospace.sh $s"
done

$BAR_NAME --add bracket spaces '/aerospace\..*/' \
          --set spaces \
                background.height=24 \
                background.corner_radius=5 \
                background.drawing=on \
                background.border_width=0 \
                background.padding_left=0 \
                background.padding_right=0

