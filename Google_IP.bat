@echo off
echo Script started at %date% %time%
echo ----------------------------------
echo Script started at %date% %time% >> "%USERPROFILE%\Desktop\timeout_monitor_log.txt"
set /p ip="Press Enter for Monitring Domain "
if "%ip%"=="" set ip=google.com
echo ..................................
echo Monitoring %ip%...
echo ..................................
echo Press Ctrl+C to stop.
echo .................................. 

:start
ping -n 1 -w 2000 %ip% > nul
if errorlevel 1 (
    echo %date% %time% - IP %ip% is unreachable
    echo %date% %time% - IP %ip% is unreachable >> "%USERPROFILE%\Desktop\timeout_monitor_log.txt"
)
goto start
