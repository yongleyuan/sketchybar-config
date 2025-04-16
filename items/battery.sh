#!/usr/bin/env bash

$BAR_NAME --subscribe battery system_woke power_source_change \
          --set battery \
                update_freq=120 \
                label.drawing=off \
                script="$PLUGIN_DIR/battery.sh"

