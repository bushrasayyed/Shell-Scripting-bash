# Display the process ID of this script
echo "Process ID (PID): $$"
# Display the name of the script
echo "Script name: $0"
# Display all arguments as a single word
echo "All arguments as a single word: $*"
# Display all arguments as separate words
echo "All arguments as separate words:"
for arg in "$@"; do
    echo "$arg"
done
