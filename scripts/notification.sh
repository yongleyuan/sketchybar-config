#!/usr/bin/env bash

INFO=$(lsappinfo info -only StatusLabel `lsappinfo find LSDisplayName="$1"`)
COUNT=$(echo $INFO | awk -F '\"' '{print $6}')

echo "$COUNT"

