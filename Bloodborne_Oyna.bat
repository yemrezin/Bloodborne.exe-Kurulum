@echo off
chcp 65001 >nul
title Bloodborne - PC Native Port (Emulatorsuz)
cd /d "%~dp0"

echo ========================================================
echo          BLOODBORNE PC NATIVE PORT BASLATILIYOR
echo                (Emulatorsuz / Yerel PC Portu)
echo ========================================================
echo.
echo  * Kontroller    : Xbox Duzenli Ozel Tus Dizilimi Devrede
echo  * Arayuz        : Xbox Tus Simgeleri (Elden Ring Tarzi)
echo  * Dil           : Turkce Metin
echo  * DLC           : The Old Hunters Aktif
echo.

if not exist "%~dp0game\CUSA03173\eboot.bin" (
    echo ========================================================
    echo  [DIKKAT] Oyun dosyalari bulunamadi!
    echo.
    echo  Oyunun calismasi icin 'game\CUSA03173' klasorunde
    echo  'eboot.bin' dosyasi bulunmalidir.
    echo.
    echo  Detayli rehber icin klasordeki
    echo  'KURULUM_VE_OYUN_REHBERI.md' dosyasini okuyabilirsiniz.
    echo ========================================================
    echo.
    pause
    exit /b 1
)

set BB_GAME_DIR=%~dp0game\CUSA03173
set BB_DATA_DIR=%~dp0bbport
set BB_USER_DIR=%~dp0bbport\user
set BB_DLC_DIR=%~dp0bbport\user\addcont\CUSA03173
set BB_LANGUAGE=19
set BB_FPS=30
set BB_MODS_ENABLED=1
set BB_MODS_DIR=%~dp0bbport\mods

cd /d "%~dp0bbport"

:: Onceki askida kalan surecleri temizle
taskkill /F /IM bb-probe.exe >nul 2>&1

:: Native PC Portunu Baslat
"Play Bloodborne.exe"

set EXIT_CODE=%ERRORLEVEL%

if %EXIT_CODE% NEQ 0 (
    echo.
    echo ========================================================
    echo  Oyun kapandi (Cikis Kodu: %EXIT_CODE%).
    echo  Log dosyasi: %~dp0bbport\user\last_run.log
    echo ========================================================
    pause
)
