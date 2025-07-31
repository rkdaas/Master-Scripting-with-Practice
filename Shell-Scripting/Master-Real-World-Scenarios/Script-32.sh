# Find all the IP addresses from a log file and write them to another file.

################################################Script-32.sh################################################
#!/bin/bash
# Check if the log file exists

logfile=$1
ipaddress_file=$2

if [[ -f "$logfile" ]]; then
    echo "Log file found."
else
    echo "Log file not found. Please check the file name or its path ."
    exit 1
fi

if [[ -f "$ipaddress_file" ]]; then
    echo "IP address file found"
else
    echo "Ip address file not found. Creating a new file."
    touch ipaddress_file.txt
fi

grep -oE '\b([0-9]{1,3}\.){3}[0-9]{1,3}\b' $logfile > $ipaddress_file


# grep - text search utility 
# -o means print the matched part only 
# -e extened regex pattern

