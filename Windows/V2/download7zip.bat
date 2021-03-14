@echo off

:: CD to folder with run.bat
cd ..\..

:: Download 7zip X64 with curl
  curl -O https://www.7-zip.org/a/7z1900.exe
  
:: Download 7zip X86 with curl
echo Downloading 7zip X64

  curl -O https://www.7-zip.org/a/7z1900-x64.exe
