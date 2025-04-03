#!/usr/bin/env bash

default=(
  padding_left=5
  padding_right=5
  icon.font="MesloLGS Nerd Font:Bold:18.0"
  label.font="MesloLGS Nerd Font:Bold:15.0"
  icon.color="0xffffffff"
  label.color="0xffffffff"
  icon.padding_left=8
  icon.padding_right=3
  label.padding_left=3
  label.padding_right=8
  background.border_color="0xffffffff"
  background.border_width=1
  background.color="0x22ffffff"
  background.corner_radius=5
  background.height=24
  background.drawing=off
)
$BAR_NAME --default "${default[@]}"

