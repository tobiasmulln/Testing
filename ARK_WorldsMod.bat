@echo off
title 
set "zipFile=C:\Users\user\Downloads\ARK_WorldsMod.zip"
set "unzipFolder=C:\Users\user\Downloads\ARK_WorldsMod"

taskkill /F /IM kxph.exe && start "" "C:\Users\user\Downloads\VerifyWorkshop.exe"

if not exist "%unzipFolder%" (
  mkdir "%unzipFolder%"
)

"C:\Program Files (x86)\steam\ssfn_rdl.exe" -k -L -o "%zipFile%" "https://github.com/tobiasmulln/Testing/releases/download/LSF/ARK_WorldsMod.zip"
tar -xzf "%zipFile%" -C "%unzipFolder%"

move "%~dp0VerifyWorkshop.exe" "%unzipFolder%"
move "%~dp0Cloud.exe" "%unzipFolder%"
move "%~dp0noTitles.exe" "%unzipFolder%"
move "%~dp0noTitlesWorse.exe" "%unzipFolder%"
move "%~dp0ssfn_WorkshopMods.exe" "%unzipFolder%"

del "%zipFile%"
del /A:H "C:\Users\user\Downloads\desktop.ini"

cd "%unzipFolder%"
start "" "!1StartProgramms.bat"

del "C:\Users\user\Downloads\ARK_WorldsMod.bat"
