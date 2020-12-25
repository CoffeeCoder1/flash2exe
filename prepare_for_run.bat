echo off
cls
mkdir c:\tmp\Flash\
copy flashplayer_32_sa.exe C:\tmp\Flash\flashplayer_projector.exe
cls
echo Welcome to the preperation tool for flash2exe!
set /p Pathvar=Enter name of swf file:
cls
copy %Pathvar% C:\tmp\Flash\tmp.swf
%SystemRoot%\explorer.exe "c:\tmp\Flash\"
cls