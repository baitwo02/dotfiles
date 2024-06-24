#!/bin/bash

if pgrep "waybar" > /dev/null
then
    echo "'waybar' is running, killing it..."
    pkill "waybar"
else
    echo "'waybar' is not running, starting it..."
    waybar &
fi
