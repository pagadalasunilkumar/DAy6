#!/bin/bash

convert_temperature() {
    temperature=$1
    unit=$2

    case $unit in
        "C" | "c")
            if (( temperature >= 0 && temperature <= 100 )); then
                degF=$(echo "scale=2; ($temperature * 9/5) + 32" | bc)
                echo "$temperature°C is equal to $degF°F"
            else
                echo "Temperature value should be within the freezing point (0°C) and boiling point (100°C) of water."
            fi
            ;;
        "F" | "f")
            if (( temperature >= 32 && temperature <= 212 )); then
                degC=$(echo "scale=2; ($temperature - 32) * 5/9" | bc)
                echo "$temperature°F is equal to $degC°C"
            else
                echo "Temperature value should be within the freezing point (32°F) and boiling point (212°F) of water."
            fi
            ;;
        *)
            echo "Invalid unit. Please enter 'C' for Celsius or 'F' for Fahrenheit."
            ;;
    esac
}

read -p "Enter the temperature: " temperature
read -p "Enter the unit (C/F): " unit

convert_temperature "$temperature" "$unit"
