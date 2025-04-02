#!/bin/bash

# Function to check if the number is prime or not
# is_prime() {
    local num=$1
    if [ "$num" -le 1 ]; then
        echo "Not Prime"
        return
    fi

    for ((i = 2; i * i <= num; i++)); do
        if [ $((num % i)) -eq 0 ]; then
            echo "Not Prime"
            return
        fi
    done

    echo "Prime"

