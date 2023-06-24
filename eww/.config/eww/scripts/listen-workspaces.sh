#!/bin/bash
get_workspaces() {
    i3-msg -t get_workspaces
}

while true; do
    #i3-msg -t subscribe '["workspace"]' > /dev/null
    sleep 0.5 && get_workspaces
done
