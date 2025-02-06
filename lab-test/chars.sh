#!/bin/bash

echo "Enter a string"
read str

len=${#str}  

if (( len % 2 == 0 )); then
    for (( i = 1; i <= len; i++ )); do
        for (( j = len; j > i; j-- )); do
            echo -n " "  
        done
        for (( j = 1; j <= i; j++ )); do
            echo -n "* "  
        done
        echo  
    done
else
    for (( i = 1; i <= len; i++ )); do
        for (( j = 1; j <= i; j++ )); do
            echo -n "$i "  
        done
        echo
    done
fi
