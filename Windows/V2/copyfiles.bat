@echo off

echo Setting some variables...

  set SWFFile=%1
  set 7zipDrv=%2
  set flashProjectorName=%3
  set lzmaName=%4
  set 7zipPath=%5
  set EXEName=%6
  
echo Done!


echo Creating folders...

  IF NOT EXIST sfx (
    echo Folder sfx does not exist, creating...
    
      mkdir sfx
    
    echo Done!
  )

echo Done!


echo Copying SFX tools...

  copy "LZMA\bin\7zSD.sfx" "sfx\7zSD.sfx"
  
echo Done!


echo Copying Flash Projector...

  copy "%flashProjectorName%" "sfx\archive\flashprojector.exe"
  
echo Done!


echo Copying SWF file...

  copy %SWFFile% "sfx\archive\tmp.swf"
  
echo Done!


echo Copying Program Files...

  copy packIn7z.bat "sfx\packIn7z.bat"
  copy createSFX.bat "sfx\createSFX.bat"
  
echo Done!

  cd sfx

echo Creating 7zip File...

  start cmd /c packIn7z.bat %SWFFile% %7zipDrv% %flashProjectorName% %lzmaName% %7zipPath% %EXEName% > packfilelog.txt
