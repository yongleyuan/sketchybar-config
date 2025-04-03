#!/usr/bin/env bash

if system_profiler SPDisplaysDataType | grep -q "Built-in Liquid"; then
  DISPLAY_NOTCH=1
  DISPLAY=2,3,4
else
  DISPLAY_NOTCH=0
  DISPLAY=1,2,3
fi

$BAR_NAME --set date display=$DISPLAY
$BAR_NAME --set date_notch display=$DISPLAY_NOTCH
$BAR_NAME --set time display=$DISPLAY
$BAR_NAME --set time_notch display=$DISPLAY_NOTCH

