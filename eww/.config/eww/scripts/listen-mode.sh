#!/bin/bash

echo "default";
while true; do
    i3-msg -t GET_BINDING_STATE | jq '.name' | xargs
    sleep 1
done
