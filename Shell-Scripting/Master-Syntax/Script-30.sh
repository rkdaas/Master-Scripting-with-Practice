# Shell script to reverse a string.

########################################Script-30.sh########################################

#!/bin/bash
# Function to reverse a string
reverse_string(){
    local input_string="$1"
    local reversed_string=""
    local length=${#input_string}
    for((i=length-1;i>=0;i--));do
        reversed_string+=${input_string:i:1}
        # input_string:i:1 extracts 1 charcter from input_string at index i , index i decides what is the character to be extracted 
    done 
    echo "Reversed string: $reversed_string"
}

# Main script execution
read -p "Enter a string to reverse: " user_input
if [[ -z "$user_input" ]]; then
    echo "No input provided. Exiting."
    exit 1 
fi
reverse_string "$user_input"