#!/bin/bash

THEME_FILE="/tmp/theme_variant"
wal_arguments=""

if [ -s "$THEME_FILE" ]; then
  case $(<"$THEME_FILE") in
    "light") wal_arguments="lighten -l" ;;
  esac
fi

wal -i ~/Github/wallpaper.png --cols16 lighten -q -n -e

pgrep -x "waybar" > /dev/null && killall -SIGUSR2 waybar && killall -SIGUSR2 swaync

spicetify apply -q -n
