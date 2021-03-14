@echo off

echo flash2exe Toolkit Downloader


echo Creating folders...

  IF NOT EXIST flash2exe (
    echo Folder flash2exe does not exist, creating...
    
      mkdir flash2exe
    
    echo Done!
  )
  cd flash2exe

echo Done!


echo Creating Variables...

  set flashProjectorName=flashplayer_32_sa.exe
  set lzmaName=lzma1900.7z
  set SWFFile=%1
  set 7zipDrv=%2
  set EXEName=%3
  set EchoInSearch=%4
  
echo Done!


echo Downloading list of files to download...

  curl -z "files.txt" -o "files.txt" "https://raw.githubusercontent.com/CoffeeCoder1/flash2exe/main/Windows/V2/files.txt"

echo Done!


echo Setting some things up...

  setlocal enabledelayedexpansion

  set Counter=1

echo Done!


echo Downloading Files...

  for /f %%x in (files.txt) do (
    echo Downloading %%x
    
    curl -O "%%x"

    echo Done downloading %%x

    set /a Counter+=1
  )

echo Done!


echo Finishing...

  set /a NumLines=Counter - 1

echo Done!


echo Locating 7zip...

  start cmd /c search.bat %SWFFile% %7zipDrv% %flashProjectorName% %lzmaName% %EXEName% %EchoInSearch% > srlog.txt
