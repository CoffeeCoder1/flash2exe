@echo off

echo 7zip Unpacker Utility


:: Set some variables to make the code more readable
echo Setting some variables...

  set SWFFile=%1
  set 7zipDrv=%2
  set flashProjectorName=%3
  set lzmaName=%4
  set 7zipPath=%5
  set EXEName=%6
  
echo Done!


:: Use 7zip to unpack the LZMA package to an LZMA folder
echo Unpacking "%lzmaName%"

  %7zipPath% x "%lzmaName%" -o"LZMA"
  
echo Done!


:: Launch copyfiles.bat
echo Copying needed files...

  start cmd /c copyfiles.bat %SWFFile% %7zipDrv% %flashProjectorName% %lzmaName% %7zipPath% %EXEName% > cplog.txt
