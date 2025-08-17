#!/bin/bash

CONFIG_FILE="$HOME/.config/hypr/hyprpaper.conf"
WALLPAPER=$(ls ~/Picture/wallpapers/* | wofi --dmenu -p "Select Wallpaper")

if [ -n "$WALLPAPER" ]; then
  # Get monitors
  MONITORS=$(hyprctl monitors | grep "Monitor" | awk '{print $2}')

  # Preload to running hyprpaper
  hyprctl hyprpaper preload "$WALLPAPER"

  # Update config and apply live
  echo "preload = $WALLPAPER" >"$CONFIG_FILE"
  for MON in $MONITORS; do
    hyprctl hyprpaper wallpaper "$MON,$WALLPAPER"
    echo "wallpaper = $MON,$WALLPAPER" >>"$CONFIG_FILE"
  done
fi
