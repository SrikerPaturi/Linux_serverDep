#!/bin/bash

# Secure Linux Server Project: Backup Automation Script
# Description: Automates daily backups of important data.

BACKUP_DIR="/backup"
DATA_DIR="/important_data"
DATE=$(date +%F)

# Create backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

# Create a compressed backup
echo "Creating a backup of $DATA_DIR..."
tar -czvf "$BACKUP_DIR/backup_$DATE.tar.gz" "$DATA_DIR"
if [ $? -eq 0 ]; then
    echo "Backup created successfully: $BACKUP_DIR/backup_$DATE.tar.gz"
else
    echo "Error: Failed to create backup."
    exit 1
fi
