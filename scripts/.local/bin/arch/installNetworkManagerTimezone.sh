#!/bin/bash
# Updates timezone whenever connected to a network

dispatcherDir="/etc/NetworkManager/dispatcher.d"

# Move it to NetworkManager dispatcher
sudo cp $HOME/.local/bin/helper/09-timezone $dispatcherDir/09-timezone

# Give proper permissions for Dispatcher
sudo chmod u+x,go-w,a-s $dispatcherDir/09-timezone

echo "Done, now reconnect to your network"
