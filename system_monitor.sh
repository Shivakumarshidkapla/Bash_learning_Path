#!/bin/bash

# System Health Monitor Script
# Author: Shivakumar S
# Date: $(date)

LOGFILE="/Users/$USER/bash_scripting/system_health.log"

{
  echo "-------------------------------------------"
  echo "🖥️  System Health Report - $(date)"
  echo "-------------------------------------------"
  
  echo ""
  echo "🔹 CPU Load:"
  uptime
  
  echo ""
  echo "🔹 Memory Usage:"
  vm_stat | grep "free\|active\|inactive\|wired"

  echo ""
  echo "🔹 Disk Usage:"
  df -h /

  echo ""
  echo "🔹 Top 5 Processes by CPU Usage:"
  ps -A -o %cpu,command | sort -nr | head -5

  echo ""
} >> "$LOGFILE"

echo "✅ System health report generated at $LOGFILE"

