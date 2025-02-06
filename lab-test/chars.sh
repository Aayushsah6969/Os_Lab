#!/bin/bash

echo "Enter a string"
read str

len=${#str}  # Get the length of the string

if (( len % 2 == 0 )); then
    for (( i = 1; i <= len; i++ )); do
        for (( j = len; j > i; j-- )); do
            echo -n " "  # Print leading spaces
        done
        for (( j = 1; j <= i; j++ )); do
            echo -n "* "  # Print stars with spaces
        done
        echo  # Move to the next line
    done
else
    for (( i = 1; i <= len; i++ )); do
        for (( j = 1; j <= i; j++ )); do
            echo -n "$i "  # Print number pattern with spaces
        done
        echo
    done
fi
