#Use a for loop to read each line from a file called data.txt and print it with its line number (e.g., 1. First line).
###########################################Start of Script-13.sh###########################################
#!bin/bash
readarray -t lines < data.txt 
for((i=0; i<${#lines[@]}; i++ )); do
    echo "$((i + 1)). ${lines[i]}"
done
###########################################End of Script-13.sh#############################################
#save this script as Script-13.sh and ensure data.txt exists in the same directory with some content.
#Make the script executable with chmod +x Script-13.sh and run it with ./Script-13.sh