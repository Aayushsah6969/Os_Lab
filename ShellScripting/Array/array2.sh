#search in the array:

#!/bin/bash

arr=("Wifi" "Mobile" "45" "8765")
echo "Print all elements"
echo "${arr[@]}"

#search in the arrays methods
search=$(echo "${arr[@]}" | grep -c "45")
echo "Search results: $search"