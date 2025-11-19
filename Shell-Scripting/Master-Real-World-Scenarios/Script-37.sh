# What is a cron job ? 
# Cron is a scheduler in Linux that runs tasks automatically 
# at specific times or intervals.

#Q: Where did you use cron job automation in your work?
# - Database backups: Automated nightly MySQL dumps at 2 AM with compression
# - Log rotation: Scheduled weekly cleanup of old application logs
# - Certificate renewal: Set up monthly checks for SSL certificate expiry
# - Health monitoring: Every 5 minutes, check service status and restart if needed
# - Report generation: Daily automated reports sent to stakeholders
# - Reduced manual intervention: Instead of asking each engineer to set up cron,
#   I created this script that standardized all scheduled tasks across the team

read -r -p "enter the schedule" schedule
read -r -p "enter the script to run or command to run " fullPath
crontab -l 2>/dev/null > tmpcron
# crontab - prints all existing cron jobs from the cron spool file /var/spool/cron/crontabs file 
# Output is redirected to a file named tmpcron - doing this because 
# We must not overwrite existing cron jobs.
# If you write a fresh file directly, you can destroy all other jobs.
# 2>/dev/null hides the error message if crontab is empty.
echo "$schedule" $fullPath >> tmpcron 
# appending the new cron to tmpcron file 
crontab tmpcron
# installing tmpcron in crontab meaning you would write the tmpcron cron jobs to crontab file 
rm tmpcron
# remvoe the tmpcron file since we already wrote the jobs in crontab
echo "Cron job added."




################################################Script-37.sh################################################

