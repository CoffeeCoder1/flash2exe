@echo off

:: Read Verbose Value and if it is nothing then set it to off
echo Setting Verbose...

  set Verbose="%4"

  if %Verbose%=="" set Verbose=off
  if %Verbose%== set Verbose=off

@echo %Verbose%

echo Done!

:: Create "download" folder if it does not exist
echo Creating folders...

  IF NOT EXIST download (
    echo Folder download does not exist, creating...
    
      mkdir download
    
    echo Done!
  )
  cd download

echo Done!


:: Download downloader.bat from the GitHub repo using curl
echo Downloading downloader...

  curl -z "downloader.bat" -o "downloader.bat" "https://raw.githubusercontent.com/CoffeeCoder1/flash2exe/main/Windows/V2/downloader.bat"

echo Done!


:: Set some variables from the paramaters passed to make the code a bit more readable
echo Setting Variables...

  set SWFFile="%1"
  set 7zipDir="%2"
  set EXEName="%3"
  
echo Done!


:: Switch to running the downloader
echo Running downloader...

  start cmd /c downloader.bat %SWFFile% %7zipDrv% %EXEName% %Verbose% > dllog.txt
