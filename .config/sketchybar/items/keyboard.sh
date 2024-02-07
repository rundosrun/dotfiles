#!/bin/bash

source "$CONFIG_DIR/globalstyles.sh"

keyboard=(
    icon.font="$FONT:Semibold:16.0"
    icon.padding_right=0
    icon="$KEYBOARD"
    label.font="$FONT:Semibold:13.0"
    script="$PLUGIN_DIR/keyboard.sh"
)

sketchybar --add item keyboard left        \
           --set keyboard "${keyboard[@]}"  \
           --add event keyboard_change "AppleSelectedInputSourcesChangedNotification" \
           --subscribe keyboard keyboard_change
