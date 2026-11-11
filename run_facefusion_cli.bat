@echo off
title FaceFusion - CLI / Headless Swapper
echo =========================================================================
echo FaceFusion Headless CLI Runner
echo =========================================================================
echo.
echo Usage example:
echo   run_facefusion_cli.bat -s "D:\New folder\input\source.jpg" -t "D:\New folder\input\target.jpg" -o "D:\New folder\output\result.jpg"
echo.

cd /d "D:\New folder\facefusion"

set "PATH=%LOCALAPPDATA%\Microsoft\WinGet\Packages\Gyan.FFmpeg_Microsoft.Winget.Source_8wekyb3d8bbwe\ffmpeg-9.0.2-full_build\bin;%PATH%"

call .venv\Scripts\activate.bat

python facefusion.py headless-run --execution-providers directml cpu --execution-thread-count 16 %*

pause

