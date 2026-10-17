#!/bin/bash

echo "==============================="
echo "Student Information"
echo "==============================="
echo "Name: Ruslan"
echo "Surname: Strizhak"
echo "Group: SE-2310"
echo "Student ID: 123456"
echo "==============================="
echo "System Information"
echo "==============================="
echo "Username: $(whoami)"
echo "Hostname: $(hostname)"
echo "Current Date: $(date)"
echo "Operating System: $(uname -o)"
echo "Disk Usage:"
df -h / | awk 'NR==2 {print "  Total: " $2 ", Used: " $3 ", Free: " $4 ", Usage: " $5}'
echo "Memory Usage:"
free -h | awk '/Mem:/ {print "  Total: " $2 ", Used: " $3 ", Free: " $4}'
echo "==============================="

INFO_FILE="../Strizhak_Ruslan_info.txt"
if [ -f "$INFO_FILE" ]; then
    echo "Student information file exists."
else
    echo "Student information file does not exist."
fi
