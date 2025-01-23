#!/bin/bash

vehicle=$1

case $vehicle in
    "car")
       echo "Rent of $vehicle is 100 dollars";;
    "jeep")
       echo "Rent of $vehicle is 10 dollars";;
    *)
       echo "Unknown vehicle";;
esac

# you'll need to pass command line argument to run the script as expected
# ./case1.sh car

