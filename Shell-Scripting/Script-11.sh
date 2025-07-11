#Write a script that uses a for loop to list all files in the current directory with a .sh extension.

#######################################Start of the script#######################################
#!/bin/bash
# Script to list all .sh files in the current directory using a for loop
for file in $(ls *.sh | sort -V)
do
    echo "Shell Script File: $file"
done    

#######################################End of the script#########################################