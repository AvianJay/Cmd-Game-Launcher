@echo off
title AvianJay Game Store
goto check

:check
echo Checking For Updates...
echo Getting Web Ver...
curl https://raw.githubusercontent.com/AvianJay/Cmd-Game-Launcher/main/ver --output ver.tmp
set /p ver=<ver.tmp
del ver.tmp
set /p nowver=<%USERPROFILE%\cgl\nowver.cfg
echo Web Ver Is %ver%,Your Ver Is %nowver%.
echo Checking...
if %nowver%==%ver% (echo Web Ver is Not New Ver. & goto store) else (echo Web Ver is New Ver, Starting Updater... & start %USERPROFILE%\cgl\storeupdater.bat & exit)

:store
echo Now Store Don't Have Game.
echo If You Want Download A Game, Press Any Key.
pause > nul
goto down

:down
set /p name="Game Name:"
set /p url="Game File Url:"
cd %USERPROFILE%\cgl\games
md %name% & cd %name%
curl %url% --output %name%.bat