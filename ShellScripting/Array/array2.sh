#search in the array:

#!/bin/bash

arr=("Wifi" "Mobile" "45" "8765")
echo "Print all elements"
echo "${arr[@]}"
#fork();#
#search in the arrays methods
search=$(echo "${arr[@]}" | grep -c "45")
echo "Search results: $search"

# Search and replace in the array
replaced_element=$(echo “${arr[@]/Shivang/SHIVANG}”)
echo “Array after search & replace: ${replaced_element[*]}”
# Delete an element in the array (index 3)
unset arr[3]
echo “Array after deletion: ${arr[*]}”

# To print elements in a range
echo “Elements in a range:”
echo “${arr[@]:2:3}” # Prints elements from index 1 to 3
echo “${arr[*]:3:4}” # Prints elements from index 1 to