#!/bin/bash

SOURCE="$HOME/ubuntu-linux-practice"
BACKUP_DIR="$HOME/linux-backups"

mkdir -p "$BACKUP_DIR"

DATE=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_FILE="$BACKUP_DIR/ubuntu-linux-practice-$DATE.tar.gz"

tar -czf "$BACKUP_FILE" -C "$HOME" ubuntu-linux-practice

echo "===== BACKUP COMPLETE ====="
echo "Backup location:"
echo "$BACKUP_FILE"
echo "==========================="
