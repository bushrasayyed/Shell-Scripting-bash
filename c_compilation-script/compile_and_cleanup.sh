#!/bin/bash

# Compile all C files
for file in *.c; do
    # Check if the file exists
    if [[ -e "$file" ]]; then
        echo "Compiling $file..."
        gcc "$file" -o "${file%.c}.out" 2> "${file%.c}_error.log"
        
        # Check if there were compilation errors
        if [[ -s "${file%.c}_error.log" ]]; then
            echo "Errors found in $file. Deleting..."
            rm "$file"
            rm "${file%.c}_error.log"  # Optionally delete the error log
        else
            echo "$file compiled successfully."
            rm "${file%.c}_error.log"  # Delete the error log if no errors
        fi
    fi
done

echo "Compilation and cleanup complete."

# chmod +x compile_and_cleanup.sh
#./compile_and_cleanup.sh


