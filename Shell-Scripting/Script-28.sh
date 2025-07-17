#Write a script to check whether the directory exists or not if not craete it 

########################################Shell Script 28########################################
#!/bin/bash
echo " Enter the directory name " 
read dir_name
if [ -d "$dir_name" ]
then 
    echo " $dir_name directory exists " 
else 
    echo " $dir_name directory does not exist, creating it now... " 
    mkdir "$dir_name"
    echo " $dir_name directory created successfully "
fi 