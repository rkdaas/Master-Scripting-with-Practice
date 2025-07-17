# loop through words 

############################################## script-23.sh ##############################################
#!/bin/bash
my_string="apple banana pie cherry date"

for word in $my_string; do 
    echo " $word"
done 

#expected output of above code-
# apple
# banana
# pie
# cherry
# date

# Note: In this case, the string is split by spaces by default.
# If you want to preserve spaces in items, you would need to use an array as shown
# in the previous script (script-22.sh).