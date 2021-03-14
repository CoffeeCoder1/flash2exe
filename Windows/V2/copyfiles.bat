@echo off

:: Set some variables to make the code a bit more readable
echo Setting some variables...

  set SWFFile=%1
  set 7zipDrv=%2
  set flashProjectorName=%3
  set lzmaName=%4
  set 7zipPath=%5
  set EXEName=%6
  
echo Done!


:: Create folder sfx if it does not exist
echo Creating folders...

  IF NOT EXIST sfx (
    echo Folder sfx does not exist, creating...
    
      mkdir sfx
    
    echo Done!
  )

echo Done!


:: Copy 7zip SFX tools to sfx folder
echo Copying SFX tools...

  copy "LZMA\bin\7zSD.sfx" "sfx\7zSD.sfx"
  
echo Done!


:: Copy Flash Projector to sfx\archive folder
echo Copying Flash Projector...

  copy "%flashProjectorName%" "sfx\archive\flashprojector.exe"
  
echo Done!


:: Copy SWF file to sfx\archive folder
echo Copying SWF file...

  copy %SWFFile% "sfx\archive\tmp.swf"
  
echo Done!


:: Copy program files for next two steps to sfx folder
echo Copying Program Files...

  copy packIn7z.bat "sfx\packIn7z.bat"
  copy createSFX.bat "sfx\createSFX.bat"
  
echo Done!

  cd sfx


:: Start packIn7z.bat
echo Creating 7zip File...

  start cmd /c packIn7z.bat %SWFFile% %7zipDrv% %flashProjectorName% %lzmaName% %7zipPath% %EXEName% > packfilelog.txt
