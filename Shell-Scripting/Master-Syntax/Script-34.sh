# Write a shell script to send the first ten lines of a file to another file.

#################################Script-34.sh#######################################

#!/bin/bash

while IFS= read -r line; do 
    echo "$line"
    ((count++))
    if [ "$count" -eq 10 ]; then 
        break 
    fi 
done < "$1" > "$2"

# Usage check
if [[$# -ne 2 ]]; then
    echo "Usage: $0 <input_file> <output_file>"
    exit 1
fi
