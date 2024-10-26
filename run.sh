#!/bin/bash
# Add local user to xhost
xhost +SI:localuser:$(id -un)
sudo docker run -e XDG_RUNTIME_DIR=/tmp -e WAYLAND_DISPLAY=$WAYLAND_DISPLAY -v $XDG_RUNTIME_DIR/$WAYLAND_DISPLAY:/tmp/$WAYLAND_DISPLAY --user=$(id -u):$(id -g) --name test-app-c test-app
sleep 1
sudo docker container rm test-app-c