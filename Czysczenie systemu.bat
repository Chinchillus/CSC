@echo off
rem Script written by Chinchill#5925 on Discord
rem Lekkie zmianki, dodanie czyszczenia wszelkich logow w systemie, usuniecie 3 linijek kodu ktore nic nie robily

rem Start jako administrator bez menu kontekstowego
set "params=%*"
cd /d "%~dp0" && ( if exist "%Temp%\getadmin.vbs" del "%Temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%Temp%\getadmin.vbs" && "%Temp%\getadmin.vbs" && exit /B )

rem Kolejno: tytul, kolor czerowny 12.6 poprzednia
title Czysczenie systemu (wersja 12.7 "Modularne krzeslo")
color c

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
 echo Witaj %USERNAME%



rem Czysczenie kosza
rd /s /q c:\$Recycle.Bin 

rem Czysczenie logów | nie zostalo uzyte cd C/ bo strasznie spowalnia skrypt szukajac plikow w WinSxS
cd %HomePath%
del *.log /a /s /q /f
cd %ProgramFiles%
del *.log /a /s /q /f
cd %ProgramFiles(x86)%
del *.log /a /s /q /f

color c

rem Usuwanie Tempu prefetchu itp.
del /s /f /q %WinDir%\Prefetch\*.* 
del /s /f /q %Temp%\*.* 
del /s /f /q %AppData%\Temp\*.* 
del /s /f /q %HomePath%\AppData\LocalLow\Temp\*.* 
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
color c

rem Crash dumpy
del /s /f /q %LocalAppData%\CrashDumps\*.*
cd C:/
color 2

rem Betterdiscord (niepotrzebne pliki instalatora)
cd %AppData%
rd /s /q "BetterDiscord Installer" 
rem Cache Crystal Launcher
rd /s /q Crystal-Launcher\cache 
rem Cache Discord
rd /s /q discord\Cache
rd /s /q discord\"Code Cache"\js
rd /s /q discord\GPUCache 
rem Cache Lunar Client
rd /s /q lunarclient\Cache 
rem Cache Logitech G-HUB
rd /s /q LGHUB\Cache\Cache_Data
rd /s /q LGHUB\"Code Cache"\js
rd /s /q LGHUB\GPUCache
rem Cache Steelseries GG
rd /s /q steelseries-gg-client\Cache
rd /s /q steelseries-gg-client\"Code Cache"\js
rd /s /q steelseries-gg-client\GPUCache
color a
rem Spotify
cd %LocalAppData%\Spotify
rd /s /q Data
cd Browser
del /s /f /q Cache\Cache_Data\*.* 
del /s /f /q DawnCache\*.* 
del /s /f /q GPUCache\*.* 
rd /s /q "Service Worker"\CacheStorage 
rd /s /q "Service Worker"\ScriptCache 
rd /s /q "Code Cache"\js
color 9
rem Cache google
cd %LocalAppData%\Google\Chrome\User Data\Default
rd /s /q "File System" 
del /s /f /q Cache\Cache_Data\*.* 
del /s /f /q DawnCache\*.* 
del /s /f /q GPUCache\*.* 
rd /s /q "Service Worker"\CacheStorage 
rd /s /q "Service Worker"\ScriptCache 
rd /s /q "Code Cache"\js 

exit
