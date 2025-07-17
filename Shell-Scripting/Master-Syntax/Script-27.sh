#read a number and tell whether it is even or odd
########################################Shell Script 27########################################
#!/bin/bash
echo " Enter a number: "
read num 
if [ $((num % 2)) -eq 0 ] 
then 
    echo " the number $num is even " 
else 
    echo " the number $num is odd " 
fi
########################################Shell Script 27########################################

