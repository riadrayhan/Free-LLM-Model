@echo off
set "NODE_DIR=%USERPROFILE%\nodejs\node-v22.23.2-win-x64"
set "PATH=%NODE_DIR%;%NODE_DIR%\node_modules\.bin;%PATH%"
REM Declarative config lives in server/data/freellmapi.config.json (holds the
REM Google AI Studio + OpenRouter + AI Horde + OVH keys). A file path is used
REM instead of inline FREEAPI_CONFIG_JSON because inline JSON takes precedence
REM over FREEAPI_CONFIG_PATH and would silently drop those keys.
set FREEAPI_CONFIG_PATH=%~dp0server\data\freellmapi.config.json
cd /d "%~dp0"
echo Starting FreeLLMAPI with server\data\freellmapi.config.json (google + openrouter + aihorde + ovh)...
npm run dev