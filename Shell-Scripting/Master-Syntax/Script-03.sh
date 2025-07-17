# Write a script that asks the user for their name. If the user doesn’t provide any input within 5 seconds,
#it should default to "Guest". Then greet the user.

###################################Start of the Script################################

#!/bin/bash

read -t 5 -p "Enter your name (within 5 seconds):" user_name
# If no input is provided, set user_name to "Guest"
user_name=${user_name:-Guest}
# Greet the user
echo "Hello, $user_name!"

###################################End of the Script #################################

###################################Output to be expected##############################
#If user did not give input in 5 seconds
#Enter your name (within 5 seconds)
#[No input provided]
#Hello, Guest!

#If user did give the input within 5 seconds
#Enter your name (within 5 seconds): Alice
#Hello, Alice!

###################################Output ended ######################################

###################################concepts covered###################################

#read -t (timeout)
#read -p (prompt)
#${var:-default} (default fallback)
########################################End###########################################

# save it to a file named Script-3.sh
# and then execute the following command in your terminal:
# chmod +x Script-3.sh
# ./Script-3.sh
# This will make the script executable.