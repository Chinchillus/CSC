@echo off
MODE 170,40
rem Script written by Chinchill#5925 on Discord
rem Duzo zmian, dodanie IE, Microsoft Edge, Minecraft, wiekszej ilosci miejsc do logow

rem Start jako administrator bez menu kontekstowego
set "params=%*"
cd /d "%~dp0" && ( if exist "%Temp%\getadmin.vbs" del "%Temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul  || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%Temp%\getadmin.vbs" && "%Temp%\getadmin.vbs" && exit /B )

rem Kolejno: tytul okna, kolor blekitny "12.7.2 Trzy modularne krzesla" poprzednia
title Czysczenie systemu (wersja 13 "13-sto konna pila mechaniczna")
color b

rem Sprawdzenie czy uzytkownik posiada uprawnienia administratora (uzywane w momencie gdy skrypt wyzej sie wysypie)
timeout /t 0 /nobreak > NUL
openfiles > NUL 2>&1
if %errorlevel%==0 (
    cls
) else (
    echo Wlacz program jako administrator.
    echo.
    echo Kliknij prawym na program i kliknij "Uruchom jako administator" i sprobuj ponownie.
	echo.
    echo Nacisnij jakikolwiek przycisk aby wyjsc...
    pause > NUL
    exit
)


 echo          a88888b. dP     dP  dP 888888ba   a88888b. dP     dP  dP dP        dP        d8    .d88888b           
 echo         d8'   `88 88     88  88 88    `8b d8'   `88 88     88  88 88        88        88    88.    "'          
 echo         88        88aaaaa88a 88 88     88 88        88aaaaa88a 88 88        88        .P    `Y88888b.          
 echo         88        88     88  88 88     88 88        88     88  88 88        88                    `8b          
 echo         Y8.   .88 88     88  88 88     88 Y8.   .88 88     88  88 88        88              d8'   .8P          
 echo          Y88888P' dP     dP  dP dP     dP  Y88888P' dP     dP  dP 88888888P 88888888P        Y88888P           
 echo.                                                                                                                
 echo.                                                                                                                
 echo   .d88888b  dP    dP .d88888b      a88888b. dP         88888888b  .d888888  888888ba   88888888b  888888ba     
 echo   88.    "' Y8.  .8P 88.    "'    d8'   `88 88         88        d8'    88  88    `8b  88         88    `8b    
 echo   `Y88888b.  Y8aa8P  `Y88888b.    88        88        a88aaaa    88aaaaa88a 88     88 a88aaaa    a88aaaa8P'    
 echo         `8b    88          `8b    88        88         88        88     88  88     88  88         88   `8b.    
 echo   d8'   .8P    88    d8'   .8P    Y8.   .88 88         88        88     88  88     88  88         88     88    
 echo    Y88888P     dP     Y88888P      Y88888P' 88888888P  88888888P 88     88  dP     dP  88888888P  dP     dP    
 echo.
 echo.
 echo Witaj, %USERNAME%
 echo.
 echo.

   
rem Jednak poprzednia wersja dzialala tak wolno ze na dysku ssd sata3 zajelo to 15,5 minuty
rem Cofnieto poprzednia zmiane
color c

del %HomePath%\*.log /a /s /q /f 2>nul
del %ProgramFiles%\*.log /a /s /q /f 2>nul
del %ProgramFiles(x86)%\*.log /a /s /q /f 2>nul
del %SystemRoot%\System32\*.log /a /s /q /f 2>nul
del %SystemRoot%\System32\*.tmp /a /s /q /f 2>nul
del %SystemRoot%\System32\LogFiles\*.* /a /s /q /f 2>nul
cd C:


color a
rem Główne czyszczenie
del /s /f /q %WinDir%\Prefetch\*.* 2>nul 
del /s /f /q %Temp%\*.* 2>nul 
del /s /f /q %AppData%\Temp\*.* 2>nul 
del /s /f /q %HomePath%\AppData\LocalLow\Temp\*.* 2>nul 
rd /s /q %WinDir%\Prefetch 
rd /s /q %Temp% 
rd /s /q %AppData%\Temp 
rd /s /q %HomePath%\AppData\LocalLow\Temp 
rd /s /q %SYSTEMDRIVE%\AMD 
rd /s /q %SYSTEMDRIVE%\NVIDIA 
rd /s /q %SYSTEMDRIVE%\INTEL 
md %WinDir%\Temp 
md %WinDir%\Prefetch 
md %Temp% 
md %AppData%\Temp 
md %HomePath%\AppData\LocalLow\Temp 
cd C:/
rem Crash dumpy
del /s /f /q %LocalAppData%\CrashDumps\*.* 2>nul 
cd C:/
color 8


rem Pojedyncze aplikacje o ktorych wiem

rem Juz nawet nie pamietam co to jest najprawdopodobniej internet explorer
cd %LocalAppData%
del /s /f /q Microsoft\Windows\INetCache\IE\*.* 2>nul
del /s /f /q Microsoft\Windows\WebCache\*.* 2>nul
rem Betterdiscord (niepotrzebne pliki instalatora)
cd %AppData%
rd /s /q "BetterDiscord Installer" 
rem Crystal Launcher
rd /s /q Crystal-Launcher\cache 
rem Discord
rd /s /q discord\Cache
rd /s /q discord\"Code Cache"\js
rd /s /q discord\GPUCache 
rem Lunar Client
rd /s /q lunarclient\Cache 
rem Minecraft, logow nie czyszcze bo logi sie przydaja
del /s /f /q %appdata%\.minecraft\crash-reports\*.* 2>nul
rem Cache Logitech G-HUB
rd /s /q LGHUB\Cache\Cache_Data
rd /s /q LGHUB\"Code Cache"\js
rd /s /q LGHUB\GPUCache
rem Steelseries GG
rd /s /q steelseries-gg-client\Cache
rd /s /q steelseries-gg-client\"Code Cache"\js
rd /s /q steelseries-gg-client\GPUCache
color a
rem Spotify
cd %LocalAppData%\Spotify
rd /s /q Data
cd Browser
del /s /f /q Cache\Cache_Data\*.* 2>nul 
del /s /f /q DawnCache\*.* 2>nul 
del /s /f /q GPUCache\*.* 2>nul 
rd /s /q "Service Worker"\CacheStorage 
rd /s /q "Service Worker"\ScriptCache 
rd /s /q "Code Cache"\js
color e
rem Google Chrome
cd %LocalAppData%\Google\Chrome\User Data\Default
rd /s /q "File System" 
del /s /f /q Cache\Cache_Data\*.* 2>nul 
del /s /f /q DawnCache\*.* 2>nul 
del /s /f /q GPUCache\*.* 2>nul 
rd /s /q "Service Worker"\CacheStorage 
rd /s /q "Service Worker"\ScriptCache 
rd /s /q "Code Cache"\js 
rem Microsoft Edge
cd %LocalAppData%\Microsoft\Edge\User Data\Default
rd /s /q "File System" 
del /s /f /q Cache\Cache_Data\*.* 2>nul 
del /s /f /q DawnCache\*.* 2>nul 
del /s /f /q GPUCache\*.* 2>nul 
rd /s /q "Service Worker"\CacheStorage 
rd /s /q "Service Worker"\ScriptCache 
rd /s /q "Code Cache"\js 

exit
