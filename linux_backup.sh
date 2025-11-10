#!/bin/bash

# A simple script to back up files on a Linux server.

# The directory to back up.
SOURCE_DIR="/path/to/source"

# The directory to store the backup.
DEST_DIR="/path/to/destination"

# The filename of the backup.
BACKUP_FILENAME="backup_$(date +%Y-%m-%d_%H-%M-%S).tar.gz"

# Create the backup.
tar -czf "$DEST_DIR/$BACKUP_FILENAME" "$SOURCE_DIR"

echo "Backup created successfully: $DEST_DIR/$BACKUP_FILENAME"
