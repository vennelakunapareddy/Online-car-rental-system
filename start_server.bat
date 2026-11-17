@echo off
title Online Car Rental System
echo ========================================================
echo         Online Car Rental System - Local Server
echo ========================================================
echo.

where php >nul 2>nul
if %ERRORLEVEL% equ 0 (
    set PHP_CMD=php
) else (
    if exist "C:\tools\php\php.exe" (
        set PHP_CMD=C:\tools\php\php.exe
    ) else (
        echo [ERROR] PHP was not found in PATH or at C:\tools\php\php.exe.
        echo Please ensure PHP is installed.
        pause
        exit /b 1
    )
)

echo Starting PHP built-in web server at http://localhost:8000 ...
echo Press Ctrl+C in this window to stop the server.
echo.

start "" "http://localhost:8000/index.html"
"%PHP_CMD%" -S localhost:8000
