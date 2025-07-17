#Write a script that uses grep to search for a word in a text file and print matching lines.
#############################################Start of Script-20.sh#############################################
#!/bin/bash
echo "Starting the script to search for a word in a text file..."
word="$1"
file="$2"
if [ ! -f $file ]; then 
    echo "Error: The file $file does not exist."
    exit 1  # Exit with status code 1 indicating an error
fi

grep -i "$word" "$file"  # Search for the word in the file, case-insensitive
if [ $? -ne 0 ]; then
    echo " No matches found for the word '$word' in $file."
    exit 1  # Exit with status code 1 indicating no matches found
fi
echo "Search completed successfully."
exit 0  # Exit with status code 0 indicating success

#############################################End of Script-20.sh#############################################



   