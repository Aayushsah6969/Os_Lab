#!/bin/bash

# Prompt the user for the order amount
read -p "Enter the order amount: " order_amount

# Validate that the order amount is a positive number
if ! [[ $order_amount =~ ^[0-9]+(\.[0-9]+)?$ ]] || (( $(echo "$order_amount <= 0" | bc -l) )); then
  echo "Invalid order amount. Please enter a valid positive number."
  exit 1
fi

# Display membership options
echo -e "\nSelect your membership type:"
echo "1. Icon (20% discount)"
echo "2. Elite (15% discount)"
echo "3. Member (5% discount on orders above ₹2500)"

# Read the membership type
read -p "Choose (1/2/3): " membership_type

# Initialize discount
discount=0

# Calculate discount based on membership type
case $membership_type in
  1)
    discount=$(echo "scale=2; $order_amount * 0.20" | bc)
    ;;
  2)
    discount=$(echo "scale=2; $order_amount * 0.15" | bc)
    ;;
  3)
    if (( $(echo "$order_amount > 2500" | bc -l) )); then
      discount=$(echo "scale=2; $order_amount * 0.05" | bc)
    else
      discount=0
    fi
    ;;
  *)
    echo "Invalid membership type selected. Please choose 1, 2, or 3."
    exit 1
    ;;
esac

# Calculate the final amount
final_amount=$(echo "scale=2; $order_amount - $discount" | bc)

# Display the results
echo -e "\nOrder Summary:"
echo "----------------------------"
echo "Order Amount       : ₹$order_amount"
echo "Discount Applied   : ₹$discount"
echo "Final Payment Amount: ₹$final_amount"
echo "----------------------------"
