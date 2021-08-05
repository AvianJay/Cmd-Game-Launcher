@echo off 
title Cmd Game Launcher Installer
echo Press any key to install.
pause > nul
cd %USERPROFILE%
%SYSTEMDRIVE%
echo Making dir...
md cgl
cd cgl
echo Downloading file...
curl https://raw.githubusercontent.com/AvianJay/Cmd-Game-Launcher/main/launcher.bat --output launcher.bat
curl https://raw.githubusercontent.com/AvianJay/Cmd-Game-Launcher/main/ajgamestore.bat --output ajgamestore.bat
curl https://raw.githubusercontent.com/AvianJay/Cmd-Game-Launcher/main/ver --output ver
echo Creating Shortcut...
echo set WshShell = WScript.CreateObject("WScript.Shell") >> findDesktop.vbs
echo strDesktop = WshShell.SpecialFolders("Desktop") >> findDesktop.vbs
echo wscript.echo(strDesktop) >> findDesktop.vbs
cscript //Nologo findDesktop.vbs >> deskdir.tmp
set /p deskdir=<deskdir.tmp
del findDesktop.vbs
del deskdir.tmp
echo Set oWS = WScript.CreateObject("WScript.Shell") > CreateShortcut.vbs
echo sLinkFile = "%deskdir%\Cmd Game Launcher.lnk" >> CreateShortcut.vbs
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> CreateShortcut.vbs
echo oLink.TargetPath = "%USERPROFILE%\cgl\launcher.bat" >> CreateShortcut.vbs
echo oLink.Save >> CreateShortcut.vbs
cscript //b CreateShortcut.vbs
del CreateShortcut.vbs
echo Creating Uninstall script...
echo @echo off >> uninstall.bat
echo title Auto Clicker Uninstaller >> uninstall.bat
echo echo Do You Want To Uninstall Auto Clicker? >> uninstall.bat
echo echo Press Any Key To Uninstall. >> uninstall.bat
echo pause >> uninstall.bat
echo cd %USERPROFILE% >> uninstall.bat
echo rmdir /S /Q %USERPROFILE%\cgl >> uninstall.bat
echo echo Uninstalled.Press Any Key To Exit. >> uninstall.bat
echo pause >> uninstall.bat
echo exit >> uninstall.bat
echo Installed.
echo Press Any Key To exit Installer.
pause > nul
exit