#!/bin/bash

MAC_ADDRESS="5C:E9:1E:0B:3A:8D"
connectected=$(bluetoothctl info "$MAC_ADDRESS" | grep "Connected: yes")
if [ -n "$connectected" ]; then
	echo "APPLE"
	$HOME/.config/i3/scripts/kb-apple.sh
else
	echo "NO APPLE"
	$HOME/.config/i3/scripts/kb.sh
fi
