@echo off

set ip=0
@REM for /f "tokens=3 delims=: " %%i in ('netsh interface ip show config name^="WiFi" ^| findstr "Address"') do set ip=%%i
for /f "tokens=1-2 delims=:" %%a in ('ipconfig^|find "Address"') do set ip=%%b

if not %ip%==0 (
    echo %ip%| clip
) else (
    echo No IP Found
    pause
)