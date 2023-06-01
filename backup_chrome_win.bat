@echo off

setlocal

REM Set the source and destination paths
set "source_folder=%LocalAppData%\Google\Chrome\User Data\Default"
set "destination_folder=%USERPROFILE%\Desktop\Chrome_Bookmarks_Backup"

REM Create the destination folder if it doesn't exist
if not exist "%destination_folder%" (
    mkdir "%destination_folder%"
)

REM Copy the Bookmarks file
copy "%source_folder%\Bookmarks" "%destination_folder%\Bookmarks" /Y

REM Display a message to indicate the backup is complete
echo Chrome bookmarks backup complete.
echo Backup location: %destination_folder%

endlocal
