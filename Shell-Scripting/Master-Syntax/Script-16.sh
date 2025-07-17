# Read the content from data.txt line by line using while loop and IFS 
###########################################Start of Script-16.sh###########################################
#!/bin/bash
count=0
while IFS= read -r line; do 
    echo "$((++count)). $line"
done < data.txt
###########################################End of Script-16.sh#############################################
# Save this script as Script-16.sh and ensure data.txt exists in the same directory with some content.
# Make the script executable with chmod +x Script-16.sh and run it with ./Script-16.sh

