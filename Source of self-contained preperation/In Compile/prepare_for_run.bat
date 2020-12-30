echo off
cls
mkdir c:\tmp\Flash\
copy flashplayer.exe C:\tmp\Flash\flashplayer_projector.exe
cls
echo Welcome to the preperation tool for flash2exe!
echo "%~1"
set Pathvar=%1
cls
copy %Pathvar% C:\tmp\Flash\tmp.swf
%SystemRoot%\explorer.exe "c:\tmp\Flash\"
cls
echo Done!
timeout /t 1