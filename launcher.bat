@echo off
title Cmd Game Launcher
if exist "%USERPROFILE%\cgl\games" (cd %USERPROFILE%\cgl\ & goto nogame) else (goto ask)

:ask
set /p ans="What Do You Want To Do?(Launch A Game=l/Download A Game=dg):"
if %ans%==l (goto launch)
if %ans%==dg (start %USERPROFILE%\cgl\ajgamestore.bat & exit)
echo Please type l or dg.
goto ask

:launch
cls
type "%USERPROFILE%\cgl\list.cfg"
set /p launch="Type A Game To Launch:"
start "%USERPROFILE%\cgl\games\%launch%\%launch%.bat"
exit

:nogame
echo You Don't Have Games.
echo Press Any Key To Start Store.
pause > nul
echo List Of Games >> list.cfg & md games & md saves
start %USERPROFILE%\cgl\ajgamestore.bat
exit
