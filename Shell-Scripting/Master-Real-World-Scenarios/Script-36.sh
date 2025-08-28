#  Shell script to copy files recursively to remote hosts.

################################Script-36.sh################################
#!/bin/bash
SOURCE_DIR="/path/to/local/folder/"
REMOTE_USER="username"
REMOTE_HOST=("host1" "host2" "host3")
REMOTE_DIR="/path/to/remote/folder/"

for HOST in "${REMOTE_HOST[@]}"; do
    echo "Copying files to $HOST..."
    rsync -avz "SOURCE_DIR" "$REMOTE_USER@$HOST:$REMOTE_DIR"
    if [ $? -eq 0 ]; then
        echo "Files copied successfully to $HOST"
    else 
        echo "Failed to copy files to $HOST"
    fi
done

#Concept: rsync is smarter than scp. It only transfers changed files, so repeated runs are fast.

#Flags explained:
#-a → archive mode: copies recursively, preserves timestamps, permissions, symlinks.
#-v → verbose: prints what’s being copied.
#-z → compress: reduces network usage.