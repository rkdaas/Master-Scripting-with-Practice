# Write a script using a while loop to print the numbers from 1 to 10.
###########################################Start of Script-14.sh###########################################
#!/bin/bash
i=1
while((i<=10));do
    echo "$i"
    ((i++))
done 
###########################################End of Script-14.sh#############################################
# Save this script as Script-14.sh and make it executable with chmod +x Script-14.sh
# Run it with ./Script-14.sh to see the output of numbers from 1 to 10.
