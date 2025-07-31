# Write a shell script function to find and kill all the zombie processes.

# ✅ Zombie Process – Summary for Interview

# 🔑 One-liner:
# > A zombie process is a terminated child process whose exit status hasn’t been collected by its parent,
# > so it remains in the process table until the parent calls `wait()`.

# ---
# ✅ Think of it like this:
# Step   What's Happening                  OS Action
# 1      Parent creates a child (fork())  ✅ Process table has parent + child
# 2      Child does its work and exits    ✅ OS marks child as "zombie" and stores its exit status
# 3      Parent calls wait()              ✅ OS gives parent the exit status and cleans up child from table

# Think of zombie processes as dead bodies not yet removed from the system.
# The script finds them, finds their parent, and says:
# “Do the final rites and clean them up.”


# =========================
# Q&A: Zombie Process Cleanup Experience
# =========================
# Q: Where did you use zombie process cleanup in your work?
# A:
# - As part of system health checks and monitoring, especially on long-running servers, 
# - I’ve encountered cases where zombie processes accumulated due to misbehaving parent processes.
# - I created or used Bash scripts to monitor zombie processes and signal their parent processes 
# - using kill -HUP (hangup singal), as part of proactive system maintenance. 
# - This helped avoid issues like PID exhaustion, which can crash the server or prevent new processes 
# - from starting.

# (Add more Q&A below as needed)

################################################Script-31.sh######################################################
#!/bin/bash
#This Bash script is used to find and clean zombie processes on a Linux system.

zombie_parents=$(ps -eo pid,ppid,state,comm | awk '$3 == "Z" {print $2}' | sort -u)

for ppid in $zombie_parents; do 
    echo "Signaling parent of zombie process with PID: $ppid"
    kill -HUP "$ppid"
done

# This script finds all parent processes of zombie processes, uniquely lists them,
# and sends a hangup signal (SIGHUP) to the parent to prompt cleanup of zombie children.
    
