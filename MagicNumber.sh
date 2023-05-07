#!/bin/bash

echo "Think of a number between 1 and 100."

low=1
high=100
guess=0

while [ $guess -ne $((low + (high - low) / 2)) ]; do
    guess=$((low + (high - low) / 2))

    read -p "Is your number less than $guess? (y/n): " choice

    if [ "$choice" == "y" ]; then
        high=$((guess - 1))
    elif [ "$choice" == "n" ]; then
        low=$((guess + 1))
    else
        echo "Invalid choice. Please enter 'y' for yes or 'n' for no."
    fi
done

echo "Magic number found! Your number is $guess."
