 #Merge (concatenate) two files and write the output to a third file.

###########################################Script-35.sh###########################################
#!/bin/bash

while IFS= read -r line || [ -n "$line" ]; do 
    echo "$line" >> "$3"
done < "$1"

while IFS= read -r line || [ -n "$line" ]; do 
    echo "$line" >> "$3"
done < "$2"

####### notes ###########
# The command: while IFS= read -r line reads each line from a file into the variable 'line'.
# If a line does not end with a newline character, 'read' will not process it, and 
# the loop will not execute for that line.
# To handle this, we add: || [ -n "$line" ]
# This makes the loop: while IFS= read -r line || [ -n "$line" ]; do
# This way, even if the last line doesn't end with a newline, it will still be processed.
