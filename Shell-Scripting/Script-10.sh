# Print Even Numbers from 1 to 20

#######################################Start of the script#######################################
#!/bin/bash
# Script to print even numbers from 1 to 20 using a for loop
for i in {1..20}
do 
    if (( $i % 2 == 0 )); then
        echo "Even Number: $i"
    fi
done
#######################################End of the script#########################################
# End of the script
# Save this script as Script10.sh and run it to see the output.
# Usage: chmod +x Script10.sh && ./Script10.sh
# This script will print each even number from 1 to 20 on a new line.