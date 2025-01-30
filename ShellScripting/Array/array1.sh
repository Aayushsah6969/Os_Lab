#!/bin/bash
# To declare a static Array
arr=(“Apple” “2.2” “1” “Laptop” “Deb” “2”)
# To print all elements of the array
echo “All elements of the array:”
echo “${arr[@]}” #first way 
echo “${arr[*]}” #second way

# To print the first element
echo “The first element:”
echo “${arr[0]}”

# To print a selected index element
selected_index=7
echo “Selected index element at index $selected_index:”
echo “${arr[$selected_index]}”

# To print elements from a particular index
echo “Elements from a particular index:”
echo “${arr[@]:1}” # Prints elements starting from index 2
echo “${arr[*]:4}” # Prints elements starting from index 2

# Count the length of the entire array
array_length=${#arr[@]}
echo “Length of the array: $array_length”