#!/bin/bash

get_battery_level() {
	if [ ! -d /sys/class/power_supply/hid-5c:e9:1e:0b:3a:8d-battery ]; then
		echo "N/A"
		return 0
	fi
	keyboard_address=$(cat /sys/class/power_supply/hid-5c:e9:1e:0b:3a:8d-battery/capacity)

	# Check if the input is a number
	if [[ $keyboard_address =~ ^[0-9]+$ ]]; then
		echo "$keyboard_address%"
	else
		echo "N/A"
	fi
}

echo "$(get_battery_level)"
