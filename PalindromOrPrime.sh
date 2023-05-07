#!/bin/bash

is_prime() {
    number=$1

    if [ $number -lt 2 ]; then
        return 1  # Not a prime number
    fi

    is_prime=1

    for ((i=2; i*i<=number; i++)); do
        if [ $((number % i)) -eq 0 ]; then
            is_prime=0
            break
        fi
    done

    return $is_prime
}

get_palindrome() {
    number=$1
    reverse=""

    while [ $number -gt 0 ]; do
        digit=$((number % 10))
        reverse="$reverse$digit"
        number=$((number / 10))
    done

    echo "$reverse"
}

read -p "Enter a number: " input_number

is_prime "$input_number"
is_prime_result=$?

if [ $is_prime_result -eq 0 ]; then
    echo "$input_number is a prime number."

    palindrome=$(get_palindrome "$input_number")

    is_prime "$palindrome"
    is_palindrome_prime_result=$?

    if [ $is_palindrome_prime_result -eq 0 ]; then
        echo "Palindrome of $input_number is $palindrome, and it is also a prime number."
    else
        echo "Palindrome of $input_number is $palindrome, but it is not a prime number."
    fi
else
    echo "$input_number is not a prime number."
fi
