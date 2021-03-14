@echo off

echo 7zip Unpacker Utility


echo Setting some variables...

  set SWFFile=%1
  set 7zipDrv=%2
  set flashProjectorName=%3
  set lzmaName=%4
  set 7zipPath=%5
  set EXEName=%6
  
echo Done!


echo Unpacking "%lzmaName%"

  %7zipPath% x "%lzmaName%" -o"LZMA"
  
echo Done!

echo Copying needed files...

  copyfiles.bat %SWFFile% %7zipDrv% %flashProjectorName% %lzmaName% %7zipPath% %EXEName% > cplog.txt
