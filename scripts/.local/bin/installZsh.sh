#! /bin/bash

# Helper script to install ZSH and Zap
sudo pacman -S zsh

# Install Zap (And add any plugins here too)
zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) --branch release-v1

# Remove newly created config
sudo rm $HOME/.zshrc* 

# Switch to zsh
chsh -s /bin/zsh

# Stow zshrc from dotfiles
cd $HOME/dotfiles
stow zsh
