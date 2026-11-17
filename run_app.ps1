# Run Online Car Rental System
Write-Host "========================================================" -ForegroundColor Cyan
Write-Host "         Online Car Rental System - Local Server        " -ForegroundColor Yellow
Write-Host "========================================================" -ForegroundColor Cyan

$phpPath = (Get-Command php -ErrorAction SilentlyContinue).Source
if (-not $phpPath) {
    if (Test-Path "C:\tools\php\php.exe") {
        $phpPath = "C:\tools\php\php.exe"
    } else {
        Write-Error "PHP executable not found. Please check PHP installation."
        exit 1
    }
}

Write-Host "Using PHP binary: $phpPath" -ForegroundColor Green
Write-Host "Opening web app in default browser: http://localhost:8000/index.html" -ForegroundColor Green
Start-Process "http://localhost:8000/index.html"

Write-Host "Server running at http://localhost:8000 (Press Ctrl+C to terminate)" -ForegroundColor Magenta
& $phpPath -S localhost:8000
