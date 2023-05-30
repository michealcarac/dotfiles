#! /bin/sh
# Binds various buttons in Sway
# CONTRIBUTIONS ENCOURAGED!!!

# This script will bind:

# Volume Mixer
# VolumeMute(F1)       -> on/off
# VolumeDown(F2)       -> -5%
# VolumeUp(F3)         -> +5%

# Screen Brightness
# BrightnessDown(F5)   -> -5%
# BrightnessUp(F6)     -> +5%

# Screenshot
# Select Region (Super + p)
# Fullscreen    (Super + o)



## ----- AUDIO ----- ##

# pactl (PulseAudio)
if [ -x "$(command -v pactl)" ]
then
	# Volume Up
	sway bindsym XF86AudioRaiseVolume exec pactl set-sink-volume @DEFAULT_SINK@ +5%
	# Volume Down
	sway bindsym XF86AudioLowerVolume exec pactl set-sink-volume @DEFAULT_SINK@ +-5%
	# Volume Mute
	sway bindsym XF86AudioMute exec pactl set-sink-mute @DEFAULT_SINK@ toggle
	# Audio Exists!
	BINDER_AUDIOEXISTS=0
fi

## ----- BRIGHTNESS ----- ##

# brightnessctl (Brightness)
if [ -x "$(command -v brightnessctl)" ]
then
	# Brightness Up
	sway bindsym XF86MonBrightnessUp exec brightnessctl set 5%+
	# Brightness Down
	sway bindsym XF86MonBrightnessDown exec brightnessctl set 5%-
	# Brightness Exists!
	BINDER_BRIGHTNESSEXISTS=0
fi

## ----- SCREENSHOT ----- ##

# slurp, grim, wl-copy (Screenshotting)
if [ -x "$(command -v slurp)" ] && [ -x "$(command -v grim)" ] && [ -x "$(command -v wl-copy)" ]
then
        # Grab Super key as same in Sway config
	mod=Mod4
	# Region
        sway bindsym $mod+p exec "slurp | grim -g - - | wl-copy"
	# Full Screen
	sway bindsym $mod+o exec "grim - | wl-copy"
	# Screenshot Exists!
	BINDER_SCREENSHOTEXISTS=0
fi


# If Audio Controller does not exist, nag the user
if [ ! "$BINDER_AUDIOEXISTS" = 0 ]
then
	swaynag --message="Errors in ~/.config/sway/binder.sh, Ensure your audio controller is installed and added to this, fix and reload sway"
fi

# If Brightness does not exist
if [ ! "$BINDER_BRIGHTNESSEXISTS" = 0 ]
then
	swaynag --message="Errors in ~/.config/sway/binder.sh, Ensure your brightness controller is installed and added to this, fix and reload sway"
fi

# If Screenshot does not exist
if [ ! "$BINDER_SCREENSHOTEXISTS" = 0 ]
then
        swaynag --message="Errors in ~/.config/sway/binder.sh, Ensure the screenshotting is being bound correctly"
fi



