#!/bin/bash
echo "Enter the no of Row of *:"
read row

for ((i=1; i<=row; i++))
do
        for ((j=i; j<row;j++))
        do
                echo -n " "
        done
        for ((k=1; k<=(2*i-1); k++))
        do
                echo -n "*"
        done
        echo
done