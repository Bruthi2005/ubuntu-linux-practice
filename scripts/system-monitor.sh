#!/bin/bash

while true
do
    clear

    echo "===== SYSTEM MONITOR ====="

    echo "CPU Usage:"
    top -bn1 | grep "Cpu(s)" | awk '{print "Used: " $2 + $4 "%"}'

    echo
    echo "Memory Usage:"
    free -h | awk '/Mem:/ {print "Used: " $3 " / " $2}'

    echo
    echo "Disk Usage:"
    df -h / | awk 'NR==2 {print "Used: " $3 " / " $2 " (" $5 ")"}'

    echo
    echo "Battery:"
    if [ -d /sys/class/power_supply/BAT0 ]; then
        cat /sys/class/power_supply/BAT0/capacity
        echo "%"
    else
        echo "Battery information unavailable"
    fi

    echo
    echo "Uptime:"
    uptime -p

    echo
    echo "Date:"
    date

    echo "=========================="

    sleep 2
done
