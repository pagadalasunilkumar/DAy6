#!/bin/bash

is_palindrome() {
    local num=$1
    local reverse=""

    while [ $num -gt 0 ]; do
        local digit=$((num % 10))
        reverse="$reverse$digit"
        num=$((num / 10))
    done

    if [ "$reverse" == "$1" ]; then
        return 0  # Palindrome
    else
        return 1  # Not a palindrome
    fi
}

# Usage example:
read -p "Enter the first number: " num1
read -p "Enter the second number: " num2

if is_palindrome "$num1" && is_palindrome "$num2"; then
    echo "Both numbers are palindromes."
else
    echo "Not both numbers are palindromes."
fi
