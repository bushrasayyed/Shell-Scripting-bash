#!/bin/bash

# Define the array
array=(1 2 3 4 5)

# Get the length of the array
length=${#array[@]}

# Initialize an empty array for the reversed array
reversed=()

# Loop to reverse the array
for (( i=length-1; i>=0; i-- )); do
  reversed+=("${array[i]}")
done

# Print the reversed array
echo "Original array: ${array[@]}"
echo "Reversed array: ${reversed[@]}"
//bash rev_array.sh
