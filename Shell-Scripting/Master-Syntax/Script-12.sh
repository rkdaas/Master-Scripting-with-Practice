 # Calculate Sum of First N Natural Numbers
 ###########################################Start of Script-12.sh###########################################
#!/bin/bash
# This script calculates the sum of the first N natural numbers
read -p "Enter a positive integer N: " N 
for (( i=0; i<=N ; i++ )){
    sum=$((sum + i))
}
echo "The sum of the first $N natural numbers is: $sum"
###########################################End of Script-12.sh#############################################
# Save this script as Script12.sh and run it to see the output.
# Usage: chmod +x Script12.sh && ./Script12.sh
# This script will prompt the user for a positive integer N and then calculate the sum of all