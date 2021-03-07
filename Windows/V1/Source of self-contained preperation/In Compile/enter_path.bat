cls
echo off
cls
%SystemRoot%\explorer.exe %CD%
echo Welcome to the preparer for the preperation tool for flash2exe!
set /p Pathvar=Enter name of swf file:
cls
timeout /t 1
prepare_for_run.bat %Pathvar%
