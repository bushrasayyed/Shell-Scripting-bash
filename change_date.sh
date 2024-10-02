#!/bin/bash

# Display the current date
echo "Current Date: $(date)"

# Change the system date
echo "Enter new date (YYYY-MM-DD):"
read new_date
sudo date -s "$new_date"

# Confirm the change
echo "Updated Date: $(date)"

# List files in /etc containing 'network'
echo "List files in /etc containing 'network' to demonstrate pipe command usage"
ls /etc | grep "network"

