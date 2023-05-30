#
# .zshrc
#

# Created by Zap installer

[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zap-zsh/exa"
# plug "zap-zsh/zap-prompt"
plug "zsh-users/zsh-syntax-highlighting"

# ----------------------------------

# SYSTEM ADDITIONS

# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit
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

# Add Purification ZSH Prompt
fpath=($SHELL_CONFIG $fpath)
[[ -f $SHELL_CONFIG/purification.zsh ]] && autoload -Uz purification.zsh && purification.zsh

# Source $SHELL_CONFIG/aliases.zsh if exists
[[ -f $SHELL_CONFIG/aliases.zsh ]] && source $SHELL_CONFIG/aliases.zsh

# Source $SHELL_CONFIG/envs.zsh if exists
[[ -f $SHELL_CONFIG/exports.zsh ]] && source $SHELL_CONFIG/exports.zsh

# END USER ADDITIONS
