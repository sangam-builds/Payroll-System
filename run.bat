@echo off
set "PATH=C:\msys64\ucrt64\bin;%PATH%"
cd /d "%~dp0build"

if not exist "payroll_server.exe" (
    echo [ERROR] payroll_server.exe not found!
    pause
    exit /b 1
)

echo ======================================================
echo   Starting Payroll System on http://localhost:8085
echo   Default Login: admin / admin123
echo ======================================================

start http://localhost:8085/
payroll_server.exe 8085
pause
