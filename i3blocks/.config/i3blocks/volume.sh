#!/bin/bash

case $BLOCK_BUTTON in
    1) pavucontrol;;
    3) pactl set-sink-mute @DEFAULT_SINK@ toggle;; # right click, mute/unmute
    4) pactl set-sink-volume @DEFAULT_SINK@ +10%;; # scroll up, increase
    5) pactl set-sink-volume @DEFAULT_SINK@ -10%;; # scroll down, decrease
esac

VOL="$(pactl get-sink-volume @DEFAULT_SINK@ | grep -Po '\d+(?=%)' | head -n 1)"
MUTE="$(pactl get-sink-mute @DEFAULT_SINK@ | awk 'NF{ print $NF }')"

# Check if muted
if [ "$MUTE" == "yes" ]; then
	echo "x"
fi

# Display sound
if [ "$VOL" == "0" ]; then
	echo ""
elif [ "$VOL" -le "40" ]; then
	echo " $VOL%"
else
	echo " $VOL%"
fi




exit 0
