# Write a script to read with a default value if no input is given in 5 seconds 

########################################Shell Script 29########################################
#!/bin/bash
echo " Enter a value (default is "Hello world") " 
read -t 5 input 


if [ -z "$input" ]
then 
    input="Hello world"
fi
echo " You entered nothing so the default value of input is $input " 
########################################Shell Script 29########################################)`
`