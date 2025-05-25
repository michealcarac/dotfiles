#
# .zshrc
#

# ----------------------------------

# SYSTEM ADDITIONS

# The following lines were added by compinstall
#zstyle :compinstall filename '~/.zshrc'

#autoload -Uz compinit
#compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install

# END SYSTEM ADDITIONS

# ----------------------------------

# USER ADDITIONS

export SHELL_CONFIG="$HOME/.config/zsh" # Configuration folder for Bash and ZSH

# When logged in, jump to Sway VM
if [ -z "${WAYLAND_DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
	exec sway
fi

fpath=($SHELL_CONFIG $fpath)

# Add Purification ZSH Prompt
#[[ -f $SHELL_CONFIG/purification.zsh ]] && autoload -Uz purification.zsh && purification.zsh

# Source $SHELL_CONFIG/aliases.zsh if exists
[[ -f $SHELL_CONFIG/aliases.zsh ]] && source $SHELL_CONFIG/aliases.zsh

# Source $SHELL_CONFIG/envs.zsh if exists
[[ -f $SHELL_CONFIG/exports.zsh ]] && source $SHELL_CONFIG/exports.zsh

# Use powerlevel10k if available
# Firstly load personal config, feel free to comment personal one out if you want to create a new theme
[[ -f $SHELL_CONFIG/p10k_pure.zsh ]] && source $SHELL_CONFIG/p10k_pure.zsh
[[ -f $SHELL_CONFIG/powerlevel10k/powerlevel10k.zsh-theme ]] && source $SHELL_CONFIG/powerlevel10k/powerlevel10k.zsh-theme

# Use zsh autosuggestions if available 
[[ -f $SHELL_CONFIG/zsh-autosuggestions/zsh-autosuggestions.zsh ]] && source $SHELL_CONFIG/zsh-autosuggestions/zsh-autosuggestions.zsh 

# Use zsh syntax-highlighting if available (Must be at end of .zshrc)
[[ -f $SHELL_CONFIG/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]] && source $SHELL_CONFIG/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# END USER ADDITIONS
