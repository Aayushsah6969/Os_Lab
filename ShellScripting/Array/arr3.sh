#!/bin/bash

bubble_sort() {
    arr=("$@")
    n=${#arr[@]}
    for ((i = 0; i < n-1; i++)); do
        for ((j = 0; j < n-i-1; j++)); do
            if ((arr[j] > arr[j+1])); then
                temp=${arr[j]}
                arr[j]=${arr[j+1]}
                arr[j+1]=$temp
            fi
        done
    done
    echo "Sorted array: ${arr[@]}"
}
echo "Enter the elements of the array:"
read -a arr
bubble_sort "${arr[@]}"


