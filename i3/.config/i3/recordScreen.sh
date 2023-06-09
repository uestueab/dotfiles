#!/bin/bash

notify-send "Screen capture pending" "press 'Super+r' to toggle screen recording" 
simplescreenrecorder   --no-systray  --start-hidden
notify-send "Success" "media is saved to ~/media/screenshots/recorded"

