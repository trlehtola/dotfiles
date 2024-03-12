#!/bin/bash
get_battery_level() {
	# Check if the input is a number
	bluetooth_output=$(bluetoothctl info D1:12:89:71:8D:5E | grep "Battery Percentage")
	if [[ $bluetooth_output =~ \(([0-9]+)\) ]]; then
		extracted_number="${BASH_REMATCH[1]}"
		echo "$extracted_number%"
	else
		echo "N/A"
	fi
}

echo "$(get_battery_level)"
