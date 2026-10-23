@echo off
chcp 65001 >nul
title Bloodborne - Ayarlar ve Baslatici
cd /d "%~dp0bbport"

echo ========================================================
echo         BLOODBORNE PC PORT AYARLARI ACILIYOR...
echo ========================================================
echo.
echo  Buradan grafik, cozunurluk, upscaler (DLSS/FSR) ve
echo  diger ayarlari degistirebilirsiniz.
echo.

start "" "Bloodborne.exe"
