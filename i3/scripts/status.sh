#!/bin/bash

i3status | while :
do
  read line
  if [ "$(playerctl status)" == 'Playing' ]; then
    echo "Now Playing: $(playerctl metadata xesam:title) - $(playerctl metadata xesam:artist) | $line" || exit 1
  else
    echo "Paused: $(playerctl metadata xesam:title) - $(playerctl metadata xesam:artist) | $line" || exit 1
  fi
done
