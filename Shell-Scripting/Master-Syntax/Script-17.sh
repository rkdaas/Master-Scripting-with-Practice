#Create a script that takes two numbers as input and prints their sum.

#################################################Start of the script ################################
#!/bin/bash
read -p "enter Two numbers to add them " Num1 Num2
add(){
sum=$(($Num1+$Num2))
echo "$Num1+$Num2=$sum"
}
add Num1 Num2 

######################################End of the Script ###########################################
#save this script as Script-17.sh
#Make it executable with: chmod +x Script-17.sh
