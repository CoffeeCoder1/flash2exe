@echo off

:: Set some variables to make the code a bit easier to read
echo Setting some variables...

  set SWFFile=%1
  set 7zipDrv=%2
  set flashProjectorName=%3
  set lzmaName=%4
  set 7zipPath=%5
  set EXEName=%6
  set ArchiveName=archive.7z
  
echo Done!


cd archive
:: Create 7zip archive
echo Creating 7zip Archive (%ArchiveName%)...

  %7zipPath% a -r "%archive.7z" sfx
  
echo Done!
cd ..

echo Adding Manifest to 7zSD.sfx (makes it not run as admin every time)...

:: Start addManifest.bat
pause

  start cmd /c addManifest.bat %SWFFile% %7zipDrv% %flashProjectorName% %lzmaName% %7zipPath% %ArchiveName% %EXEName% > crsfxlog.txt
