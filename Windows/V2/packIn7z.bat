@echo off

echo Setting some variables...

  set SWFFile=%1
  set 7zipDrv=%2
  set flashProjectorName=%3
  set lzmaName=%4
  set 7zipPath=%5
  set EXEName=%6
  set ArchiveName=archive.7z
  
echo Done!


echo Creating 7zip Archive (%ArchiveName%)...

  %7zipPath% a -r "%archive.7z" sfx
  
echo Done!


echo Creating SFX...

pause

  createSFX.bat %SWFFile% %7zipDrv% %flashProjectorName% %lzmaName% %7zipPath% %ArchiveName% %EXEName% > crsfxlog.txt
