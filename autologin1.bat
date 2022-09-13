@echo off
cls
TITLE Steam: Select Steam account
color a
echo closing ongoing processes
taskkill /F /IM csgo.exe
taskkill /F /IM GameOverlayUI.exe
taskkill /F /IM Steam.exe
timeout /t 1
cls
echo(
echo .
echo .
echo     1    xxxx
echo .
echo .
echo     2    xxxx
echo .
echo .
echo     3    xxx
echo .
echo .
echo     4    xxxx
echo .
echo .
echo     5    xxxxx
echo .
echo .
echo     6    CANCEL
echo .
echo .
echo(

CHOICE /C 12345

If Errorlevel 9 Goto 9
If Errorlevel 8 Goto 8
If Errorlevel 7 Goto 7
If Errorlevel 6 Goto 6
If Errorlevel 5 Goto 5
If Errorlevel 4 Goto 4
If Errorlevel 3 Goto 3
If Errorlevel 2 Goto 2
If Errorlevel 1 Goto 1

:9
set username=
Goto end
:8
set username=
Goto end
:7
set username=
Goto end
:6
exit
:5
set username=xxxxx
Goto end
:4
set username=xxxxx
Goto end
:3
set username=xxxx
color a
Goto end
:2
set username=xxxx
color a
Goto end
:1
set username=xxxx
color a
Goto end
:end
cls 
reg add "HKCU\Software\Valve\Steam" /v AutoLoginUser /t REG_SZ /d %username% /f
reg add "HKCU\Software\Valve\Steam" /v RememberPassword /t REG_DWORD /d 1 /f
start "" https://aimware.net/vip/download/client
timeout /t 4
taskkill /F /IM Chrome.exe
cls 
exit