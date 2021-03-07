[Version]
Class=IEXPRESS
SEDVersion=3
[Options]
PackagePurpose=InstallApp
ShowInstallProgramWindow=0
HideExtractAnimation=0
UseLongFileName=1
InsideCompressed=0
CAB_FixedSize=0
CAB_ResvCodeSigning=0
RebootMode=N
InstallPrompt=%InstallPrompt%
DisplayLicense=%DisplayLicense%
FinishMessage=%FinishMessage%
TargetName=%TargetName%
FriendlyName=%FriendlyName%
AppLaunched=%AppLaunched%
PostInstallCmd=%PostInstallCmd%
AdminQuietInstCmd=%AdminQuietInstCmd%
UserQuietInstCmd=%UserQuietInstCmd%
SourceFiles=SourceFiles
[Strings]
InstallPrompt=
DisplayLicense=C:\tmp\Flash\In Compile\Instructions.txt
FinishMessage=
TargetName=C:\tmp\Flash\Creator.EXE
FriendlyName=Getting Ready...
AppLaunched=cmd /c enter_path.bat
PostInstallCmd=<None>
AdminQuietInstCmd=
UserQuietInstCmd=
FILE0="enter_path.bat"
FILE1="flashplayer.exe"
FILE2="Instructions.txt"
FILE3="RUN.lnk"
FILE4="SED.SED"
FILE5="prepare_for_run.bat"
[SourceFiles]
SourceFiles0=C:\tmp\Flash\In Compile\
[SourceFiles0]
%FILE0%=
%FILE1%=
%FILE2%=
%FILE3%=
%FILE4%=
%FILE5%=
