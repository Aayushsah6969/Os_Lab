#!/bin/bash
echo "Enter the starting num :"
read st
echo "Enter the Ending Num:"
read en

for (( i=st; i<=en; i++))
do
        if(( i % 2 == 0));
        then
                echo $i
        fi
done