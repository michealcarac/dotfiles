#!/bin/bash

# Hopefully you only have one BAT and this pulls from it. Otherwise set BAT0/BAT1
BAT=$(cat /sys/class/power_supply/*/capacity)
BAT_STATUS=$(cat /sys/class/power_supply/*/status)

# Full and short texts

# Check if battery is full ( >= 99)
if [ "$BAT" -ge "99" ]; then
	echo ""
fi

if [ "$BAT" -ge "75" ]; then
	BAT_LOGO=""
elif [ "$BAT" -ge "50" ]; then
	BAT_LOGO=""
elif [ "$BAT" -ge "25" ]; then
	BAT_LOGO=""
else
	BAT_LOGO=""
fi

# Check if battery is charging or not
if [ "$BAT_STATUS" = "Charging" ]; then
	echo "$BAT_LOGO $BAT% "
else
	echo "$BAT_LOGO  $BAT% "
fi


exit 0
