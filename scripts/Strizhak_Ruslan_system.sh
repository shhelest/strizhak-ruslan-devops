#!/bin/bash

echo "=============================="
echo "Student Information"
echo "=============================="

echo "Name: ${STUDENT_NAME:-Ruslan}"
echo "Surname: ${STUDENT_SURNAME:-Strizhak}"
echo "Group: ${STUDENT_GROUP:-IT2-2314}"
echo "Student ID: ${STUDENT_ID:-37187}"

echo ""
echo "=============================="
echo "System Information"
echo "=============================="

echo "Username: $(whoami)"
echo "Hostname: $(hostname)"
echo "Current Date: $(date)"
echo "Operating System: $(uname -s)"

echo "Disk Usage:"
df -h /

echo "Memory Usage:"
free -h

echo ""
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"

if [ -f "$PROJECT_DIR/Strizhak_Ruslan_info.txt" ]; then
    echo "Student information file exists."
else
    echo "Student information file does not exist."
fi

