#Ask the user to enter their first name and last name in one line.
#Then, ask them to press any key to continue (no need to hit Enter).

####################################Start of the Script################################
#!/bin/bash
# Prompt for first and last name input
read -p "Enter your first and last name: " first_name Last_name
# Prompt to press any key to continue
read -n 1 -s -p "Press any key to continue..."
echo # To move to the next line after key press
# Print the entered names
echo "First name : $first_name"
echo "Last name : $Last_name"
####################################End of the Script###################################

# To run this script:
# Save it to a file named Script-5.sh
# Then execute the following command in your terminal:
# chmod +x Script-5.sh
# ./Script-5.sh
# This will make the script executable.