#!/bin/bash

result=$(ps ax | grep -v grep | grep "polybar example")
if [ "$result" == "" ];then
    eval "polybar example 2>&1 | tee -a /tmp/polybar.log & disown"
    echo "Polybar launched..."
else
    eval "killall -q polybar"
fi
