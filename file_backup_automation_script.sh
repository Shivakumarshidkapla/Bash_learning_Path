#!/bin/bash 
#file back up script 

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
tar -czf "$backup_dir/back_$timestamp.tar.gz" "$source_dir"
echo "[$(date)] backup of the $source_dir is compleated" >> "$log_file"

echo "Backup created at $backup_dir/backup_$timestamp.tar.gz"

