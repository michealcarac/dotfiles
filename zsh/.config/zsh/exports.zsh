# ~/.envs
#
# Contains Environment Variables for BASH or ZSH

export TERM=alacritty
export EDITOR="nano"
export PATH="$HOME/.local/bin/:$PATH" # So scripts in $HOME can be ran
export MOZ_ENABLE_WAYLAND

set MOZ_ENABLE_WAYLAND 1 # Sets firefox to run with Wayland, Check with about:support in Firefox, look at Window Protocol
set SDL_VIDEODRIVER 'wayland' # Override this to x11 for native steam games
