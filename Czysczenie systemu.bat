@echo off
rem Poprawiono literowke

rem Start jako administrator bez prawego przycisku
set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )

rem Kolejno: tytul, kolor czerowny 12.4 poprzednia
title Czysczenie systemu (wersja 12.5 "Zlomek")
color c

rem Sprawdzenie czy uzytkownik posiada uprawnienia administratora (uzywane w momencie gdy skrypt wyzej sie wysypie)
timeout /t 0 /nobreak > NUL
openfiles > NUL 2>&1
if %errorlevel%==0 (
    cls
) else (
    echo Wlacz program jako administrator.
    echo.
    echo Kliknij prawym na program i kliknij ^'Uruchom jako administator^' i sprobuj ponownie.
	echo.
    echo Nacisnij jakikolwiek przycisk aby wyjsc...
    pause > NUL
    exit
)


echo   CCCC  HH      IIII                  HH      IIII  LL   LL  
echo  CC     HH       II                   HH       II   LL   LL  
echo CC      HH       II   NNNNN    CCCCC  HH       II   LL   LL  
echo CC      HHHHH    II   NN  NN  CC      HHHHH    II   LL   LL  
echo  CC     HH  HH   II   NN  NN  CC      HH  HH   II   LL   LL  
echo   CCCC  HH  HH  IIII  NN  NN   CCCCC  HH  HH  IIII   LL   LL 


rem Czysczenie kosza
rd /s /q c:\$Recycle.Bin 

color a

rem Usuwanie tempu prefetchu itp.
del /s /f /q %WinDir%\Prefetch\*.* 
del /s /f /q %Temp%\*.* 
del /s /f /q %AppData%\Temp\*.* 
del /s /f /q %HomePath%\AppData\LocalLow\Temp\*.* 
set folder="C:\Windows\Temp" 
cd /d %folder%
for /F "delims=" %%i in ('dir /b') do (rmdir "%%i" /s/q || del "%%i" /s/q)

color b

rem Usuwanie tempu, prefetchu oraz jego folderow
rd /s /q %WinDir%\Prefetch 
rd /s /q %Temp% 
rd /s /q %AppData%\Temp 
rd /s /q %HomePath%\AppData\LocalLow\Temp 

color d

rem Usuwanie niepotrzebnych folderow sterownikow (bo sa juz zainstalowane)
rd /s /q %SYSTEMDRIVE%\AMD 
rd /s /q %SYSTEMDRIVE%\NVIDIA 
rd /s /q %SYSTEMDRIVE%\INTEL 

color 5

rem Ponowne stworzenie folderow
md %WinDir%\Temp 
md %WinDir%\Prefetch 
md %Temp% 
md %AppData%\Temp 
md %HomePath%\AppData\LocalLow\Temp 

color 9

rem Cache google
cd %localappdata%\Google\Chrome\User Data\Default
rd /s /q "File System" 
del /s /f /q Cache\Cache_Data\*.* 
del /s /f /q DawnCache\*.* 
del /s /f /q GPUCache\*.* 
rd /s /q "Service Worker"\CacheStorage 
rd /s /q "Service Worker"\ScriptCache 
rd /s /q "Code Cache"\js 

color c

rem Crash dumpy
del /s /f /q %localappdata%\CrashDumps\*.*

color 2

rem Betterdiscord (niepotrzebne pliki instalatora)
cd %appdata%
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

color c

exit
