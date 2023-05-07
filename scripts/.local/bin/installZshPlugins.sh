#! /bin/bash

# Installs zsh plugins as defined in the .zshrc

# Go to zap plugin directory
cd $HOME/.local/share/zap/plugins

# Clone exa repo
git clone https://github.com/zap-zsh/exa.git

# Download exa 
sudo pacman -S exa

# Now pull down the .zshrc 
cd $HOME/dotfiles
stow zsh



