#!/bin/bash

# Display system information
echo "System Information:"
echo "-------------------"

# 1. Display hostname
hostname=$(hostname)
echo "Hostname: $hostname"

# 2. Display system uptime
uptime_info=$(uptime)
echo "Uptime: $uptime_info"

# 3. Display disk space usage
df_info=$(df -h)
echo "Disk Space Usage:"
echo "$df_info"

# 4. Display memory usage
free_info=$(free -m)
echo "Memory Usage:"
echo "$free_info"

# 5. List running processes
echo "Running Processes:"
ps_info=$(ps aux)
echo "$ps_info"

# 6. Display user information
echo "Users currently logged in:"
who_info=$(who)
echo "$who_info"

# 7. Display command history
echo "Command History:"
history_info=$(history)
echo "$history_info"

