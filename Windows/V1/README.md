# flash2EXE

# THIS HAS NOT BEEN UPDATED IN FOREVER, BUT MORE UPDATES ARE COMING SOON. THE WINDOWS FOLDER WILL CONTAIN ALL WINDOWS VERSIONS

## YOU NEED A WINDOWS MACHINE TO CONVERT OR RUN CONVERTED FILES. Run `test.exe` to see if this will work on your system, `test.swf` is the source of that file.

## USING SELF-EXTRACTING EXE (Obsolete, just use the other method now):

### 1) When it opens explorer, place the flash program in the folder it opens. Close the window.

### 2) Type in the name of the flash program. Press enter.

### 3) When it asks for admin privileges, give them.

### 4) In the wizard that opens press next, select create package, and create it.

### 5) The file will be exported to c:/tmp/flash/export.exe.

## USING FILES IN FOLDER:

### 0.1) If you use an alternative flash player, place it in the folder with the rest of the files, delete `flashplayer.exe`, and rename it `flashplayer.exe`.

#### 1) Place the swf file in the folder with the rest of the files. 
##### OPTION 1: Run `enter_path.bat`. When it asks for the name of swf file, enter the name of the swf file that you placed in the folder with the rest of the files and press enter.
##### OPTION 2: In explorer, drag swf file to `prepare_for_run.bat`
##### OPTION 3: Run cmd at location that you extracted the files to and run `prepare_for_run.bat`
#### When it opens the folder at `C:\tmp\Flash`, do not close the folder, you will need it later.

#### 2) Run "RUN" (Shortcut). It is a windows tool (`C:\Windows\System32\iexpress.exe`), and has existed since windows 2000, so it requires administrator privileges and the shortcut runs it with them (It will probably bring up a prompt, give it admin privileges).

#### 3) Select Open existing Self Extracting Directive file. Click browse and find `SED.SED` (In folder with everything else) or enter path to `SED.SED` in text box. Click next.

#### 4) Leave Create Package selected and click next. Click next again. Your package is now being created!

###### SWF of flash test was taken from [UltraSounds](https://www.ultrasounds.com/)
