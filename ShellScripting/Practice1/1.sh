#!/bin/bash
read -p "Enter the order amount: " amt
if ! [[ $amt =~ ^[0-9]+(\.[0-9]+)?$ ]] || (( $(echo "$amt <= 0" | bc -l) )); then
  echo "Invalid order amount. Please enter a valid positive number."
  exit 1
fi

echo "1. Icon (20% discount)"
echo "2. Elite (15% discount)"
echo "3. Member (5% discount on orders above ₹2500)"

read -p "Choose (1/2/3): " membership_type

discount=0

case $membership_type in
  1)
    discount=$(echo "scale=2; $amt * 0.20" | bc);;
  2)
    discount=$(echo "scale=2; $amt * 0.15" | bc);;
  3)
    if (( $(echo "$amt > 2500" | bc -l) )); then
      discount=$(echo "scale=2; $amt * 0.05" | bc)
    else
      discount=0
    fi;;
  *)
    echo "Invalid membership type selected. Please choose 1, 2, or 3."
    exit 1;;
esac

final_amount=$(echo "scale=2; $amt - $discount" | bc)

echo -e "\nOrder Summary:"
echo "----------------------------"
echo "Order Amount       : ₹$amt"
echo "Discount Applied   : ₹$discount"
echo "Final Payment Amount: ₹$final_amount"
echo "----------------------------"
