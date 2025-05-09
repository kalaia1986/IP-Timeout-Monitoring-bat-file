@echo off
echo Script started at %date% %time% >> %USERPROFILE%\Desktop\timeout_log.txt
echo Script started at %date% %time% 
Echo ----------------------------------
set /p ip=" Press Enter for google.com "
if "%ip%"=="" set ip=google.com
Echo ..................................
echo Monitoring %ip%... 
Echo ..................................
Echo Press Ctrl+C to stop.
:start
ping %ip% -n 1 > nul
if errorlevel 1 (
    echo %date% %time% - Timeout for %ip%
    echo %date% %time% - Timeout for %ip% >> %USERPROFILE%\Desktop\timeout_log.txt
)
timeout /t 1 > nul
goto start
