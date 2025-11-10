@echo off

rem A simple script to back up files on a Windows server.

rem The directory to back up.
set SOURCE_DIR="C:\\path\\to\\source"

rem The directory to store the backup.
set DEST_DIR="C:\\path\\to\\destination"

rem The filename of the backup.
set BACKUP_FILENAME="backup_%date:~-4,4%%date:~-10,2%%date:~-7,2%_%time:~0,2%%time:~3,2%%time:~6,2%.zip"

rem Create the backup.
powershell.exe -NoProfile -Command "Compress-Archive -Path %SOURCE_DIR% -DestinationPath %DEST_DIR%\\%BACKUP_FILENAME%"

echo "Backup created successfully: %DEST_DIR%\\%BACKUP_FILENAME%"
