#!/bin/bash 
#file back up script
#before you run this script using cron tab, please configure cron tab, use crontab -e command and add the cron i.e 0 20 * * * /Users/apple/backup_script.sh
#(example) now the file will run for above mentioned time  

timestamp=$(date +"Y%m%d_H%M%S")
backup_dir="/Users/apple/backups"
log_file="/Users/apple/backups/backup_log.txt"

echo "enter a valid dir to backup:"
read source_dir

if [ ! -d "$source_dir" ]; then 
 echo "Error: Dir not found"
 exit 1
fi

mkdir -p "$backup_dir"
/usr/bin/tar -czf "$backup_dir/back_$timestamp.tar.gz" -C "$source_dir"
echo "[$(date)] backup of the $source_dir is compleated" >> "$log_file"

echo "Backup created at $backup_dir/backup_$timestamp.tar.gz"

