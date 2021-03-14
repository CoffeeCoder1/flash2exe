@echo off

echo CoffeeCoder1's Search Toolkit

echo Setting some variables...

  :: set file to look for to 7zip
  set filename="7z.exe"

  :: the drive or path to search.
  set searchPath="%2"

  set SWFFile=%1
  set 7zipDrv=%2
  set flashProjectorName=%3
  set lzmaName=%4
  set EXEName=%5
  set Verbose=%6
  
echo Done!

@echo %Verbose%

echo Fixing some variables...

  if exist "%searchPath%" ( echo Running... ) else ( set searchPath="C:\" )

echo Done!


echo Creating some variables...

  :: If the file is found. This variable will be set
  set foundFilePath=

echo Done!


echo Searching for 7z.exe...

echo Does "C:/Program Files/7zip/7z.exe" Exist?

  if exist "C:/Program Files/7-Zip/7z.exe" (
    echo Yes!
    set foundFilePath="C:/Program Files/7-Zip/7z.exe"
    goto :foundfile
  ) else ( echo No )


echo Does "C:/Program Files (x86)/7zip/7z.exe" Exist?

  if exist "C:/Program Files (x86)/7-Zip/7z.exe" (
    echo Yes!
    set foundFilePath="C:/Program Files (x86)/7-Zip/7z.exe"
    goto :foundfile
  ) else ( echo No )

  :: echos and saves first found path
  FOR /R "%searchPath%" %%a  in (%filename%) DO (
    IF EXIST "%%~fa" (
      echo "%%~fa" 
      SET foundFilePath=%%~fa
      goto :foundfile
    )
  )

echo Done!
echo File not found.


:foundfile

echo Done!


IF EXIST "%foundFilePath%" (
  echo The path to 7zip is set to '%foundFilePath%'
  echo Unpacking Files...
  start cmd /c unpackLZMA.bat "%SWFFile%" "%7zipDrv%" "%flashProjectorName%" "%lzmaName%" "%foundFilePath%" "%EXEName%" > uplog.txt
) else (
  echo Could not find file '%filename%' under '%searchPath%'
  echo Downloading 7zip installer...
  start cmd /c download7zip.bat > dl7zplog.txt
)
