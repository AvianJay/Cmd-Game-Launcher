@echo off
set name=%1%
set load1=%2%
set load2=%3%
set load3=%4%
set load4=%5%
set load5=%6%
echo Loading...
set /p %load1%=<%USERPROFILE%\cgl\saves\%name%\%load1%
set /p %load2%=<%USERPROFILE%\cgl\saves\%name%\%load2%
set /p %load3%=<%USERPROFILE%\cgl\saves\%name%\%load3%
set /p %load4%=<%USERPROFILE%\cgl\saves\%name%\%load4%
set /p %load5%=<%USERPROFILE%\cgl\saves\%name%\%load5%
echo Loaded.