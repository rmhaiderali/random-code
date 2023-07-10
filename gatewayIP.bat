@echo off

set ip=0
@REM for /f "tokens=3 delims=: " %%i in ('netsh interface ip show config name^="WiFi" ^| findstr "Default"') do set ip=%%i
for /f "tokens=1-2 delims=:" %%a in ('ipconfig^|find "Default"') do set ip=%%b

if not %ip%==0 (
    @REM echo %ip%| clip
    start chrome http://%ip%:8080/
) else (
    echo No IP Found
    pause
)