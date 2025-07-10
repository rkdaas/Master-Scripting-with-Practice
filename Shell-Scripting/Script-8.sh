# Create a script that checks if a file exists and prints a message accordingly. 

####################################Start of the Script################################

#!/bin/bash
# Function to check if a file exists
check_file_exists(){
    if [ -e "$1" ]; then
        echo "File '$1' exists."
    else 
        echo "File '$1' does not exist."
    fi
}

# Call the function with a file name as an argument
check_file_exists "example.txt"

####################################End of the Script###################################
# To run this script:
# Save it to a file named Script-8.sh
# Then execute the following command in your terminal:
# chmod +x Script-8.sh
# ./Script-8.sh
# This will make the script executable.
# You can replace "example.txt" with any file name you want to check.