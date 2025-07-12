# Create a script that uses a case statement to print the name of the day based on a number (1 to 7).

###############################################Start of the script###############################################
#!/bin/bash

read -p "Enter a number (1-7) to get the corresponding day of the week: " Number
case $Number in 
    1) echo "Monday" ;;
    2) echo "Tuesday" ;;
    3) echo "Wednesday" ;;
    4) echo "Thursday" ;;
    5) echo "Friday" ;;
    6) echo "Saturday" ;;
    7) echo "Sunday" ;;
    *) echo "Invalid number! Please enter a number between 1 and 7." ;;
esac
###############################################End of the script#################################################
# Save this script as Script-15.sh and run it to test the functionality.
# Make sure to give it execute permissions using: chmod +x Script-15.sh
# Then execute it with: ./Script-15.sh