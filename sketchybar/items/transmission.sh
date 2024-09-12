#!/bin/bash

transmission=(
  drawing=off
  background.color=0xfff07178
  background.height=16
  background.corner_radius=16
  label.font="JetBrainsMono Nerd Font:Bold:11"
  label.color=0xbf181926
  label.padding_right=8
  icon.drawing=off
  update_freq=5
  updates=on
  script="$PLUGIN_DIR/transmission.sh"
  click_script="open -a /Applications/Transmission.app"
)

sketchybar --add item transmission right                \
           --set      transmission "${transmission[@]}"