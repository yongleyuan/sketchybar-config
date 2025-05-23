#!/usr/bin/env bash

UPDOWN=$(ifstat -i "en0" -b 0.1 1 | tail -n1)
UP=$(echo $UPDOWN | awk "{ print \$2 }" | cut -f1 -d ".")

UP_FORMAT=""
if [ "$UP" -gt "999" ]; then
  UP_FORMAT=$(echo $UP | awk '{ printf "%.0f Mbps", $1 / 1000}')
else
  UP_FORMAT=$(echo $UP | awk '{ printf "%.0f kbps", $1}')
fi

$BAR_NAME -m --set net_up_speed \
                    label="$UP_FORMAT" \
                    icon.highlight=$(if [ "$UP" -gt "0" ]; then echo "on"; else echo "off"; fi)

