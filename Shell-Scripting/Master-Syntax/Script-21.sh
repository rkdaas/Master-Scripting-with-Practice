# Some grep commands normally used in daily life of a devops engineer 

#############################################Start of Script-21.sh#############################################
#!/bin/bash

# Use Case: You're debugging a service failure and want to find all occurrences of the word "error" in the system logs.

grep "error" /var/log/syslog

# above command Lists all lines containing the word "error" from /var/log/syslog.

# Use Case: You want to catch both "Error", "ERROR", and "error" in logs.

grep -i "error" /var/log/syslog

# above command Searches for the word "error" in a case-insensitive manner in /var/log/syslog.

# Use Case: You want to find lines that do not contain the word "success".

grep -v "success" /var/log/syslog

# above command Lists all lines from /var/log/syslog that do not contain the word "success".

# Use Case: You want to search for a specific error code, say "404", in the logs.

grep "404" /var/log/syslog

# above command Searches for the string "404" in /var/log/syslog, which is useful for identifying HTTP errors.

#Use Case: You only want to match "failed", not "prefailed" or "failedly".

grep -w "failed" /var/log/syslog

# above command Searches for the exact word "failed" in /var/log/syslog, ignoring partial matches.

#Use Case: You want to debug or edit a config/log file at the exact line where an issue occurred.

grep -n "error" /var/log/syslog

# above command Lists all lines containing the word "error" along with their line numbers in /var/log/syslog.

#Use Case: While browsing logs, highlight matches to make them easier to spot.

grep --color=always "error" /var/log/syslog
# above command Highlights the word "error" in the output, making it easier to spot in /var/log/syslog.

#Use Case: You're checking all Nginx config files for hardcoded port values.
grep -r "PORT" /etc/nginx/

# above command Recursively searches for the string "PORT" in all files under /etc/nginx/, useful for finding hardcoded port values.

#Use Case: Clean your logs by removing DEBUG-level noise.

grep -v "DEBUG" /var/log/syslog > /var/log/syslog_cleaned

# above command Filters out lines containing "DEBUG" from /var/log/syslog and saves the cleaned output to /var/log/syslog_cleaned.

# Use Case: You want to identify system services that are starting.

grep "^Starting" /var/log/syslog

#  ^ anchors the pattern to the beginning of the line.

# Use Case: You want lines where "failed" is at the end, like "Authentication failed."

grep "failed$" /var/log/syslog

#  $ anchors the pattern to the end of the line.

# Use Case: Count how many times users connected.

grep -c "connected" /var/log/auth.log

# Returns the number of matching lines.

# Use Case: You want to find lines that contain either "error" or "warning".
grep -E "error|warning" /var/log/syslog
# above command Uses extended regex to search for lines containing either "error" or "warning" in /var/log/syslog.

#Use Case: You’re checking archived .gz logs without decompressing manually.

zgrep "error" /var/log/syslog.1.gz

# above command Searches for the word "error" in compressed log files, like /var/log/syslog.1.gz, without needing to decompress them first.

# Use Case: Live Log monitoring for errors.

tail -f /var/log/syslog | grep "error" 
# above command Continuously monitors /var/log/syslog for new lines and filters them to show only those containing the word "error".
#tail -f explained:
#tail: Displays the last part of a file (usually the last 10 lines by default).
#-f: Stands for "follow" — it tells tail to keep the file open and keep displaying new lines as they are added.
