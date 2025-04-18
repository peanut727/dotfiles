#!/bin/bash

process="\.exe$"
script_process="auto_gamemode.s"
gamemode_on=false

while true; do
 hyprcommand=$(hyprctl clients | grep "initialClass:" | grep -E "$process") 
  if [[ -n "$hyprcommand" ]]; then
    if [[ "$gamemode_on" == false ]]; then
      sh -c ~/.config/hypr/scripts/gamemode.sh
      notify-send "Gamemode on"
      gamemode_on=true
    fi
  else
    if [[ "$gamemode_on" == true ]]; then
      notify-send "turning gamemode off"
      hyprctl --batch "\
        keyword animations:enabled 1;\
        keyword decoration:drop_shadow 1;\
        keyword decoration:blur:enabled 1;\
        keyword decoration:active_opacity 1;\
        keyword decoration:inactive_opacity 1;\
        keyword general:gaps_in 5;\
        keyword general:gaps_out 5;\
        keyword general:border_size 2;\
        keyword decoration:drop_shadow true;\
        keyword decoration:rounding 10"
        gamemode_on=false
    fi
  fi
  sleep 5
done
