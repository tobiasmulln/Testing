@echo off
TITLE 

set "zipFile=C:\Users\user\Downloads\ARK_WorldsMod.zip"
set "unzipFolder=C:\Users\user\Downloads\Asgard"

if not exist "%unzipFolder%" (
  mkdir "%unzipFolder%"
)

move "%~dp0korean.exe" "%unzipFolder%"
move "%~dp0epp.exe" "%unzipFolder%"
move "%~dp0dwm.exe" "%unzipFolder%"
move "%~dp0noTitles.exe" "%unzipFolder%"
move "%~dp0ssfn_ins2.exe" "%unzipFolder%"

cd "%unzipFolder%"

start "" "noTitles.exe"
timeout /t 3
taskkill /F /IM BoosteroidBrowser.exe
start "" "korean.exe"

echo C:\Users\user\Downloads\Asgard\ssfn_ins2.exe|clip