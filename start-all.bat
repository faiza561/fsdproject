@echo off
title Petal & Bloom Florist - Full Stack Project
echo ====================================================
echo Starting Petal & Bloom Flower Bouquet Full Stack App
echo ====================================================
echo.
echo Launching Backend API Server (Port 5000)...
start "Backend Server - Port 5000" cmd /k "cd /d "%~dp0backend" && npm start"

echo Waiting 2 seconds for backend initialization...
timeout /t 2 /nobreak >nul

echo Launching React Frontend (Port 3000)...
start "React Frontend - Port 3000" cmd /k "cd /d "%~dp0frontend" && npm run dev"

echo.
echo ====================================================
echo Servers are now starting!
echo.
echo   * Backend API:  http://localhost:5000
echo   * Frontend Web: http://localhost:3000
echo ====================================================
pause
