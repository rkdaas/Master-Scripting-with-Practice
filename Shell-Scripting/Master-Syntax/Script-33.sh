# Shell script to find all duplicate strings in a file and replace them with another string.

#####################################################Script-33.sh################################################
#!/bin/bash

# Usage check
if [[ $# -ne 2 ]]; then
    echo "Usage: $0 <filename> <replacement_string>"
    exit 1
fi

# Check if the input file exists
input_file=$1
replaced_string=$2

if [[ ! -f "$input_file" ]]; then
    echo "Input file not found."
    exit 1
fi

tr -s '[:space:]' '\n' < "$input_file" | sort | uniq -d | while read -r duplicate; do 
    echo "Replacing duplicate string: '$duplicate' with '$replaced_string'"
    sed -i "s/\b$duplicate\b/$replaced_string/g" "$input_file"
done 


######## Notes ##############

# tr - translate characters
#   -s : squeeze repeated characters
#   '[:space:]' : all whitespace characters to be replaced
#   '\n' : newline character to replace whitespace
#   So: tr -s '[:space:]' '\n' < "$input_file"
#   - replaces all whitespace with newlines, putting each word on a new line

# | : pipe operator to send output to next command

# sort : sorts the output, required before using uniq

# uniq -d : prints only duplicate words from sorted output
#   - cannot use sort -u, as that gives only unique words, not duplicates

# | : pipe operator to send output to while loop

# while read -r duplicate; do
#   - reads each duplicate word into variable 'duplicate'

# sed : stream editor
#   -i : edit file in place
#   s : substitute command
#   \b : word boundary, matches whole word only
#   /g : global flag, replaces all occurrences in file
#   "$input_file" : file to be edited

# done : end of while loop





    