#!/bin/bash

echo "===== DISK USAGE ====="

df -h

echo
echo "===== DIRECTORY USAGE ====="

du -sh "$HOME" 2>/dev/null

echo "======================"
