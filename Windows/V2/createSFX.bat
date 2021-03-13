@echo off

echo Setting some variables...

  set SWFFile="%1"
  set 7zipDrv="%2"
  set flashProjectorName="%3"
  set lzmaName="%4"
  set 7zipPath="%5"
  set ArchiveName="%6"
  set EXEName="%7"
  set ConfigName="config.txt"
  
echo Done!

if "%EXEName%"=="" set EXEName="sfx.exe"

echo Copying files to %EXEName% with config file "%ConfigName%"...

  copy /b 7zSD.sfx + %ConfigName% + archive.7z "%EXEName%"
  
echo Done!


echo Finished creating SFX. Output SFX to file "%EXEName%"

echo Feel free to delete all of the files other than "run.bat". Running "run.bat" will download the files needed to download all of the files from the internet.