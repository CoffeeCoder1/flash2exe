@echo off

echo Setting Verbose...

  set Verbose="%4"

echo Creating folders...

  IF NOT EXIST download (
    echo Folder download does not exist, creating...
    
      mkdir download
    
    echo Done!
  )
  cd download

echo Done!

echo Downloading downloader...

  curl -z "downloader.bat" -o "downloader.bat" "https://raw.githubusercontent.com/CoffeeCoder1/flash2exe/main/Windows/V2/downloader.bat"

echo Done!

echo Setting Variables...

  set SWFFile="%1"
  set 7zipDir="%2"
  set EXEName="%3"
  
echo Done!


echo Running downloader...

  downloader.bat "%SWFFile%" "%7zipDrv%" "%EXEName%" "%Verbose%"> dllog.txt
