#!/usr/bin/env bash

$BAR_NAME -m --set ram_percent label=$(memory_pressure | grep "System-wide memory free percentage:" | awk '{print 100-$5"%"}')

