# Write a shell script to print the current date and time.

####################################Start of the Script################################
#!/bin/bash

# Function to print the current date and time
print_date_time(){
    current_date_time=$(date +"%Y-%m-%d %H:%M:%S")
    echo "Current Date and Time: $current_date_time"
}
# Call the function to print the date and time
print_date_time
####################################End of the Script###################################
# To run this script:
# Save it to a file named Script-7.sh
# Then execute the following command in your terminal:
# chmod +x Script-7.sh
# ./Script-7.sh
# This will make the script executable.