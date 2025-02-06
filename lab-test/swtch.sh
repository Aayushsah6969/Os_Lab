#!/bin/bash

echo "Enter your attendance percentage"
read n

case $n in
    9[1-9] | 100)  
        echo "Class performance = 5"
        echo "Class note = 5"
        ;;
    8[6-9] | 90)   
        echo "Class performance = 4"
        echo "Class note = 5"
        ;;
    7[6-9] | 85)   
        echo "Class performance = 3"
        echo "Class note = 4"
        ;;
    *)  
        echo "Debarred from exam"
        ;;
esac