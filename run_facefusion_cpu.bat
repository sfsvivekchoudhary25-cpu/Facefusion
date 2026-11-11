@echo off
title FaceFusion - CPU Only Mode
echo ===================================================
echo Starting FaceFusion (CPU 16-Threads)...
echo ===================================================

cd /d "D:\New folder\facefusion"

:: Ensure refreshed PATH includes FFmpeg and WinGet packages
set "PATH=%LOCALAPPDATA%\Microsoft\WinGet\Packages\Gyan.FFmpeg_Microsoft.Winget.Source_8wekyb3d8bbwe\ffmpeg-9.0.2-full_build\bin;%PATH%"

:: Activate virtual environment
call .venv\Scripts\activate.bat

:: Launch FaceFusion in CPU-only mode
python facefusion.py run --execution-providers cpu --execution-thread-count 16 --open-browser

pause

