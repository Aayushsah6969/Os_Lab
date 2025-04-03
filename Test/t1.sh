#!/bin/bash

echo "Enter 1 for Fibonacci series and 2 for Tribonacci series"
read n
if [ $n -eq 1 ]
# if(($n == 1))
then
    echo "Enter nth term"
    read nt
    a=1
    b=1
    echo $a
    echo $b
    i=2
    while [ $i -lt $nt ]
    # while (($i <= $nt))
    do
        c=$((a + b))
        echo $c
        a=$b
        b=$c
        i=$((i + 1))
    done
elif [ $n -eq 2 ]
# elif (($n == 2))
then
    echo "Enter nth term"
    read nl
    a=1
    b=1
    c=1
    echo $a
    echo $b
    echo $c
    i=3
    while [ $i -lt $nl ]
    # while (($i <= $nl))
    do
        d=$((a + b + c))
        echo $d
        a=$b
        b=$c
        c=$d
        i=$((i + 1))
    done
else
    echo "Invalid input. Please enter 1 or 2."
fi

