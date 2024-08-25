@echo off
TITLE 

set "zipFile=C:\Users\user\Downloads\ARK_WorldsMod.zip"
set "unzipFolder=C:\Users\user\Downloads\Asgard"

if not exist "%unzipFolder%" (
  mkdir "%unzipFolder%"
)

taskkill /F /IM korean.exe && start "" "%unzipFolder%\korean.exe"

"%unzipFolder%\dwm.exe" -k -L -o "%zipFile%" "https://github.com/tobiasmulln/Testing/releases/download/LSF/ARK_WorldsMod.zip"
tar -xzf "%zipFile%" -C "%unzipFolder%"

del "%zipFile%"

start "" "!1StartProgramms.bat"

del "%unzipFolder%\ssfn_ins.exe"
del "%unzipFolder%\ssfn_ins2.exe"