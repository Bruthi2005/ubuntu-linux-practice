#!/bin/bash

echo "===== SYSTEM INFORMATION ====="

echo "Hostname:"
hostname

echo
echo "Ubuntu Version:"
grep PRETTY_NAME /etc/os-release | cut -d '"' -f 2

echo
echo "Kernel Version:"
uname -r

echo
echo "CPU:"
lscpu | grep "Model name" | head -n 1

echo
echo "RAM:"
free -h

echo
echo "Disk Usage:"
df -h /

echo
echo "Uptime:"
uptime -p

echo "=============================="
