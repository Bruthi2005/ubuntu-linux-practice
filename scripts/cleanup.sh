#!/bin/bash

echo "===== CLEANUP ====="

echo "Temporary files in /tmp:"
find /tmp -type f -mtime +7 2>/dev/null | head -20

echo
echo "Cleaning old temporary files..."

find /tmp -type f -mtime +7 -delete 2>/dev/null

echo
echo "Cleanup completed."
echo "==================="
