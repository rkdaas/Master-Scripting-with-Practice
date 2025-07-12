#Write a shell script that uses && and || operators to perform conditional commands. 
#################################################Start of the script ################################
#!/bin/bash
read -p "Enter a number: " num

if [ $num -gt 0 ] && [ $num -lt 100 ]; then
    echo "The number is between 1 and 99."
else
    echo "The number is not in the range of 1 to 99."
fi

if [ $num -eq 0 ] || [ $num -eq 100 ]; then
    echo "The number is either 0 or 100."
else
    echo "The number is neither 0 nor 100."
fi
######################################End of the Script ###########################################
#save this script as Script-18.sh
#Make it executable with: chmod +x Script-18.sh
