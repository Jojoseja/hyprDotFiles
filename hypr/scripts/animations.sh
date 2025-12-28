#!/bin/bash

# Get the current animation status
status=$(hyprctl getoption animations:enabled -j | jq -r '.int')

if [ "$status" -eq 1 ]; then
    # Animations currently enabled — turn them off
    hyprctl keyword animations:enabled false
    hyprctl keyword decoration:blur:enabled false
    hyprctl keyword decoration:shadow:enabled = false
else
    # Animations currently disabled — turn them on
    hyprctl keyword animations:enabled true
    hyprctl keyword decoration:blur:enabled true
    hyprctl keyword decoration:shadow:enabled = true
fi
