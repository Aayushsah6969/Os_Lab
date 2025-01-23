#!/bin/bash

#prompt the user to the enter the first number
echo "Enter the first number"
read num1
#Promt the user to enter secont number
echo "Enter the second number"
read num2

sum = $((num1 + num2))
echo "The sum of $num1 and $num2 is : $sum"
echo $((num1 + num2))
