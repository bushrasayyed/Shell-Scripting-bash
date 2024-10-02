#!/bin/sh

# Define the array correctly
array="1 2 3 4 5"

# Initialize an empty array for reversed elements
reversed=()

# Reverse the array using seq
for i in $(seq 0 $((${#array[@]} - 1))); do
    reversed[$i]=${array[$(($#array - 1 - i))]}
done

echo "Reversed array: ${reversed[@]}"

