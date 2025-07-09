#Create a loop that keeps asking the user to enter yes or no until a valid answer is given.
#Case-insensitive. Exit with a thank-you message.

####################################Start of the Script################################
#!/bin/bash
# Function to prompt for yes or no input
prompt_yes_no(){
    while(1); do
        read -p " Please enter 'yes' or 'no': " answer
        # Convert input to lowercase for case-insensitive comparison
        answer=$(echo "$answer" | tr '[:upper:]' '[:lower:]')
        case "$answer" in
            yes)
                echo "Thank you for your response!"
                break
                ;;
            no) 
                echo "Thank you for your response!"
                break
                ;;
            *)
                echo "Invalid input .Please try again."
                ;;
        esac
    done 
}
# Call the function to start the loop
prompt_yes_no
####################################End of the Script###################################
# To run this script:
# Save it to a file named Script-6.sh
# Then execute the following command in your terminal:
# chmod +x Script-6.sh
# ./Script-6.sh
# This will make the script executable.