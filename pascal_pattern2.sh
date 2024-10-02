#!/bin/bash
# Read the number of rows from the user
echo "Enter the number of rows:"
read n

i=0
while [ $i -lt $n ]; do
  j=0
  val=1

  while [ $j -le $i ]; do
    echo -n "$val "
    val=$((val * (i - j) / (j + 1)))
    j=$((j + 1))
  done

  echo ""  # Move to the next line
  i=$((i + 1))
done

