echo off
cls
copy flashplayer_32_sa.exe C:\tmp\Flash\flashplayer_32_sa.exe
set /p Pathvar=Enter name of swf file:
copy %Pathvar% C:\tmp\Flash\tmp.swf
%SystemRoot%\explorer.exe "c:\tmp\Flash\"