# loop over output of a command 

############################################## script-25.sh ##############################################
#!/bin/bash
# This script demonstrates how to loop over the output of a command.

# Here we will use the `ls` command to list files in the current directory.
for file in $(ls); do
    echo "File: $file"
done 

#expected output of above code-
# File: Script-01.sh 
# File: Script-02.sh
# File: Script-03.sh
# (and so on, depending on the files in the current directory)

