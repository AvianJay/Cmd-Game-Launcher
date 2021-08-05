@echo off
set name=%1%
set save1=%2%
set save2=%3%
set save3=%4%
set save4=%5%
set save5=%6%
set save6=%7%
set save7=%8%
set save8=%9%
set save9=%10%
set save10=%11%
echo Saveing...
cd %USERPROFILE%\cgl\saves\
if exist %USERPROFILE%\cgl\saves\%name% (md %name%)
cd %USERPROFILE%\cgl\saves\%name%
del %2% & del %3% & del %4% & del %5% & del %6%
echo %save1% > %save6%
echo %save2% > %save7%
echo %save3% > %save8%
echo %save4% > %save9%
echo %save5% > %save10%
echo Saved.