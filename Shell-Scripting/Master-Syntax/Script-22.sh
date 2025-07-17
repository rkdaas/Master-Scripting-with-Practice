#Write a script to loop through an array and print each element.
############################################## script-22.sh ##############################################
#!/bin/bash
my_array=("apple" "banana pie" "cherry" "date")
# make sure you dont put commas in the array items, otherwise it will not work as expected.
# Loop through the array using @ to preserve spaces in items
for fruit in "${my_array[@]}"; do
    echo "$fruit"
done

#expected output of above code-
#apple
#banana pie
#cherry
#date

for fruit in ${my_array[*]}; do
    echo "$fruit"
done
#expected output of above code-
#apple banana pie cherry date

# @ - This is used when we want to 	Keeps items separate (most common) it actually preserves the spaces in the items.
# * - This is used when we want to 	Combines items into a single string (less common) it actually removes the spaces in the items.