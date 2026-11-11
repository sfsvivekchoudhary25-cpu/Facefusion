@echo off
title FaceFusion - Cloudflare Public Tunnel
echo ===================================================
echo Starting Cloudflare Tunnel for FaceFusion (Port 7860)
echo (No account or token required!)
echo ===================================================
echo.
echo Make sure FaceFusion is running first!
echo Once started, look for the 'https://*.trycloudflare.com' URL below.
echo Share that link to open FaceFusion on any phone or other computer!
echo.
"C:\Program Files (x86)\cloudflared\cloudflared.exe" tunnel --url http://127.0.0.1:7860
pause

