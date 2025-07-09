#Prompt the user to enter a password (input should be hidden), then ask to re-enter the password for confirmation.
#Print whether the passwords match or not.

####################################Start of the Script################################

#!/bin/bash
# Prompt for password input

read -s -p "Enter your password: " password1
echo # To move to the next line after password input
# Prompt for password confirmation
read -s -p "Re-enter your password: " password2
echo # To move to the next line after confirmation input
# Check if the passwords match
if [ "$password1" == "$password2" ]; then
    echo "Passwords match."
else
    echo "Passwords do not match."
fi
####################################End of the Script###################################

# To run this script:
# Save it to a file named Script-4.sh
# Then execute the following command in your terminal:
# chmod +x Script-4.sh
# ./Script-4.sh
# This will make the script executable.