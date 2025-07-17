# Write a script that takes multiple arguments from the command line and prints each one. 

#######################################Script-26.sh ##############################################
#!/bin/bash
First_argument=$1
Second_argument=$2
Third_argument=$3
Script_name=$(basename "$0")

my_array=("$First_argument" "$Second_argument" "$Third_argument")


# Loop through the arguments and print each one



for arg in "${my_array[@]}"; do 
    echo "Argument: $arg"
done

echo "Script name: $Script_name"

