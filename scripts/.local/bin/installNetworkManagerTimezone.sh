#!/bin/bash
# Updates timezone whenever connected to a network

dispatcherDir="/etc/NetworkManager/dispatcher.d"

# Move it to NetworkManager dispatcher
sudo cp $HOME/.local/bin/helper/09-timezone $dispatcherDir/09-timezone

# Why not run it once just in case
sudo sh $dispatcherDir/09-timezone
