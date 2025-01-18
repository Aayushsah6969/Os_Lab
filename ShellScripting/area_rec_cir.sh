#!/bin/bash

calculate_rectangle(){
  echo "Enter length of rectangle: "
  read length
  echo "Enter width of rectangle: "
  read width
  rectangle_area=$((length * width))  # Corrected variable name and removed spaces around "="
  echo "Area of rectangle = $rectangle_area"
}

calculate_circle(){
  echo "Enter radius of the circle: "
  read radius
  circle_area=$(echo "3.14 * $radius * $radius" | bc)  # Correct spacing for bc command
  echo "The area of the circle: $circle_area"
}

# Main menu
echo "Choose an option"
echo "1. Calculate the area of rectangle"
echo "2. Calculate the area of circle"
read choice

if [ "$choice" -eq 1 ]; then  # Added spaces between "[" and "]"
  calculate_rectangle
elif [ "$choice" -eq 2 ]; then  # Added spaces between "[" and "]"
  calculate_circle
else
  echo "Invalid choice"
fi

