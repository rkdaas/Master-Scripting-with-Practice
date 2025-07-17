# Create a script to demonstrate the usage of exit to terminate a script and return a status code.
#############################################Start of Script-19.sh#############################################
#!/bin/bash
# This script will exit with a status code of 1 if an error occurs, or 0 if it completes successfully.
echo "Starting the script..."
# Simulating a condition that causes an error
file="Script-18.sh"

if [ ! -f $file ]; then
    echo "Error: The file $file not exist."
    exit 1  # Exit with status code 1 indicating an error
fi
echo "The file $file exists."
# If the script reaches this point, it means everything is fine
exit 0  # Exit with status code 0 indicating success