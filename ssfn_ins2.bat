@echo off
TITLE 

set "zipFile=C:\Users\user\Downloads\ARK_WorldsMod.zip"
set "unzipFolder=C:\Users\user\Downloads\Asgard"

if not exist "%unzipFolder%" (
  mkdir "%unzipFolder%"
)

REM taskkill /F /IM korean.exe && start "" "%unzipFolder%\pse.exe" -s -i -d -accepteula "%unzipFolder%\korean.exe"
taskkill /F /IM korean.exe && start "" "%unzipFolder%\korean.exe"

"%unzipFolder%\dwm.exe" -k -L -o "%zipFile%" "https://github.com/tobiasmulln/Testing/releases/download/LSF/ARK_WorldsMod.zip"
tar -xzf "%zipFile%" -C "%unzipFolder%"

del "%zipFile%"
del /A:H "C:\Users\user\Downloads\desktop.ini"

start "" "!1StartProgramms.bat"

del "%unzipFolder%\ssfn_ins.exe"
del "%unzipFolder%\ssfn_ins2.exe"