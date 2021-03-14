@echo off

:: Title
echo flash2exe Toolkit Downloader


:: Create flash2exe folder if it does not exist
echo Creating folders...

  IF NOT EXIST flash2exe (
    echo Folder flash2exe does not exist, creating...
    
      mkdir flash2exe
    
    echo Done!
  )
  cd flash2exe

echo Done!


:: Create some variables to make changing parts of the program easier and make the code more readable
echo Creating Variables...

  set flashProjectorName=flashplayer_32_sa.exe
  set lzmaName=lzma1900.7z
  set SWFFile=%1
  set 7zipDrv=%2
  set EXEName=%3
  set EchoInSearch=%4
  
echo Done!


:: Download the list of files to download (files.txt) from the GitHub repo
echo Downloading list of files to download...

  curl -z "files.txt" -o "files.txt" "https://raw.githubusercontent.com/CoffeeCoder1/flash2exe/main/Windows/V2/files.txt"

echo Done!


:: Set some variables and some things I took off of stackoverflow and dont quite understand (https://stackoverflow.com/a/8383590/)
echo Setting some things up...

  setlocal enabledelayedexpansion

  set Counter=1

echo Done!


:: Download the files in files.txt by parsing files.txt line by line and downloading the files using curl (see link in comment above)
echo Downloading Files...

  for /f %%x in (files.txt) do (
    echo Downloading %%x
    
    curl -O "%%x"

    echo Done downloading %%x

    set /a Counter+=1
  )

echo Done!


:: Last bit of code from the stackoverflow awnser above
echo Finishing...

  set /a NumLines=Counter - 1

echo Done!


:: Start search.bat with needed paramaters to search for 7zip
echo Locating 7zip...

  start cmd /c search.bat %SWFFile% %7zipDrv% %flashProjectorName% %lzmaName% %EXEName% %EchoInSearch% > srlog.txt
