@echo off
REM FreeLLMAPI - Local Development Server Startup Script
REM This script starts both the API server (port 3001) and the dashboard (port 5173)

set "NODE_DIR=%USERPROFILE%\nodejs\node-v22.23.2-win-x64"
set "PATH=%NODE_DIR%;%NODE_DIR%\node_modules\.bin;%PATH%"

cd /d "%~dp0"
echo Starting FreeLLMAPI...
echo   Server (API):  http://localhost:3001
echo   Dashboard:     http://localhost:5173
echo.

npm run dev

pause