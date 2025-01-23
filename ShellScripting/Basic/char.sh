#!/bin/bash

echo -e "Enter any character: \c"
read value
case $value in
	[a-z] )
	echo "User entered $value a to z";;
	[A-Z] )
	echo "User entered $values A to Z";;
	[0-9] )
	echo "User entered $values 0 to 9";;
	? )
	echo "User entered special charecter $value";;
	* )
	echo"Invalid entry";;
esac
	
