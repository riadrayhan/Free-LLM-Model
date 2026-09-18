@echo off
cd /d "%~dp0"
echo Setting Git config...
git config user.name "Riad Rayhan"
git config user.email "riadrayhan@example.com"

echo Initializing Git and pushing to GitHub...
git branch -M main
git remote remove origin 2>nul
git remote add origin https://github.com/riadrayhan/Free-LLM-Model.git
git add .
git commit -m "Initial commit: FreeLLMAPI monorepo"
git push -u origin main --force
pause
