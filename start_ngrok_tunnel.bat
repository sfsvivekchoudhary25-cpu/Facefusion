@echo off
title FaceFusion - Ngrok Tunnel
echo ===================================================
echo Starting Ngrok Tunnel for FaceFusion (Port 7860)
echo ===================================================
echo.
set "NGROK_EXE=%LOCALAPPDATA%\Microsoft\WinGet\Packages\Ngrok.Ngrok_Microsoft.Winget.Source_8wekyb3d8bbwe\ngrok.exe"
if not exist "%NGROK_EXE%" (
    set "NGROK_EXE=ngrok"
)

echo Make sure you have added your authtoken if this is your first time:
echo "%NGROK_EXE%" config add-authtoken ^<YOUR_AUTH_TOKEN^>
echo.
"%NGROK_EXE%" http 7860
pause

