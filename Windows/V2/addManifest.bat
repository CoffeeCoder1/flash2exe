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


:: Add Manifest to 7zSD.sfx
"../extract/Windows Kits/10/bin/10.0.19041.0/x86/mt.exe" -manifest ../manifest.xml -outputresource:"7zS.sfx;#1"
