@echo off
rem Scarica le foto del sito nella cartella img\ (doppio clic per avviarlo)
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0scarica-foto.ps1"
pause
