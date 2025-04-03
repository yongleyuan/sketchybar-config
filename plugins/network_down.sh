#!/usr/bin/env bash
UPDOWN=$(ifstat -i "en0" -b 0.1 1 | tail -n1)
DOWN=$(echo $UPDOWN | awk "{ print \$1 }" | cut -f1 -d ".")

DOWN_FORMAT=""
if [ "$DOWN" -gt "999" ]; then
  DOWN_FORMAT=$(echo $DOWN | awk '{ printf "%.0f Mbps", $1 / 1000}')
else
  DOWN_FORMAT=$(echo $DOWN | awk '{ printf "%.0f kbps", $1}')
fi

$BAR_NAME -m --set net_down_speed \
                    label="$DOWN_FORMAT" \
                    icon.highlight=$(if [ "$DOWN" -gt "0" ]; then echo "on"; else echo "off"; fi)

