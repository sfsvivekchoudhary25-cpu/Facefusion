@echo off
title FaceFusion - Local Wi-Fi / LAN Port Forwarding
echo ===================================================
echo Enabling LAN Access for FaceFusion (Port 7860)
echo ===================================================
echo.
echo This command forwards incoming traffic on your local network
echo to your FaceFusion server running on 127.0.0.1:7860.
echo.
echo NOTE: Please run this script as ADMINISTRATOR!
echo.
netsh interface portproxy add v4tov4 listenport=7860 listenaddress=0.0.0.0 connectport=7860 connectaddress=127.0.0.1
netsh advfirewall firewall add rule name="FaceFusion Port 7860" dir=in action=allow protocol=TCP localport=7860

echo.
echo Port forwarding configured!
echo Your Local IP is: 192.168.1.57
echo On another device on the same Wi-Fi, open:
echo   http://192.168.1.57:7860
echo.
pause

