# C-style for loop in shell script 

############################################## script-24.sh ##############################################
#!/bin/bash

for ((i=0;i<5;i++));do
    echo "Iteration $i"
done 

#expected output of above code -
#Iteration 0
#Iteration 1
#Iteration 2
#Iteration 3
#Iteration 4

# Note: This is a C-style for loop, which is useful for iterating a specific number of times.
# It initializes a variable, checks a condition, and increments the variable in each iteration.
# This is different from the previous scripts which used for loops to iterate over arrays or strings.


