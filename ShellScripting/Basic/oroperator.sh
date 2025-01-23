#!/bin/bash

age=25

# if [[ "$age" -eq 18 || "$age" -eq 25 ]]
#if [ "$age" -eq 18 -o "$age" -eq 25 ]
if [ "$age" -eq 18 ] || [ "$age" -eq 20 ]
then
echo "Valid age"
else
echo "Invalid age"
fi
