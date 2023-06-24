#!/bin/bash

echo "default";
while true; do
    i3-msg -t subscribe '["mode"]' | jq '.change' | xargs
    sleep 1.5
done
