#!/bin/bash

# Install NetworkManager (Current placeholder before making a better script)
sudo pacman -S networkmanager

# Install GUI
sudo pacman -S nm-connection-editor

# Install Applet
sudo pacman -S network-manager-applet

# Enable service
sudo systemctl enable NetworkManager.service

# Start service
sudo systemctl start NetworkManager.service 

## Set iwd Backend

# Install iwd
sudo pacman -S iwd

# Create and edit wifi_backend config file
sudo touch /etc/NetworkManager/conf.d/wifi_backend.conf
echo "[device]\nwifi.backend=iwd" | sudo tee -a /etc/NetworkManager/conf.d/wifi_backend.conf

# Restart Network Manager
sudo systemctl restart NetworkManager.service

# Finalization 
echo "You will probably want to run nm-connection-editor and config Networks now!"

