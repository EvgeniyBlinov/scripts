#! /bin/bash

pulseaudio --start -D
#pactl set-sink-volume 'alsa_output.pci-0000_00_1b.0.analog-stereo' 200%
pactl -- set-sink-volume 0 200%
