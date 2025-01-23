#!/bin/bash

age=20

if [ "$age" -gt 18 ] && [ "$age" -lt 60 ]
then
	echo "Given age is valid"
else 
	echo "Given age is not valid"
fi
