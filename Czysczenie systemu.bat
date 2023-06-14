rem if u are stealing my code please just add me to the credit @Chinchill#5925 (Discord)
cls
@echo off
color c
MODE 140,40
set "params=%*"
cd /d "%~dp0" && ( if exist "%Temp%\getadmin.vbs" del "%Temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul  || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%Temp%\getadmin.vbs" && "%Temp%\getadmin.vbs" && exit /B )
title CSC (v15 "Plastikowy grzejnik")
:start
echo.
echo.
echo        CCCCCCCCCCCCC     SSSSSSSSSSSSSSS         CCCCCCCCCCCCC
echo      CCC::::::::::::C  SS:::::::::::::::S      CCC::::::::::::C
echo    CC:::::::::::::::C S:::::SSSSSS::::::S    CC:::::::::::::::C
echo   C:::::CCCCCCCC::::C S:::::S     SSSSSSS   C:::::CCCCCCCC::::C
echo  C:::::C       CCCCCC S:::::S              C:::::C       CCCCCC
echo C:::::C               S:::::S             C:::::C
echo C:::::C                S::::SSSS          C:::::C
echo C:::::C                 SS::::::SSSSS     C:::::C
echo C:::::C                   SSS::::::::SS   C:::::C
echo C:::::C                      SSSSSS::::S  C:::::C
echo C:::::C                           S:::::S C:::::C
echo  C:::::C       CCCCCC             S:::::S  C:::::C       CCCCCC
echo   C:::::CCCCCCCC::::C SSSSSSS     S:::::S   C:::::CCCCCCCC::::C
echo    CC:::::::::::::::C S::::::SSSSSS:::::S    CC:::::::::::::::C
echo      CCC::::::::::::C S:::::::::::::::SS       CCC::::::::::::C
echo        CCCCCCCCCCCCC   SSSSSSSSSSSSSSS           CCCCCCCCCCCCC
echo.
echo Witaj, %USERNAME%!
echo.
timeout /t 1 /nobreak >nul
goto csc
:csc
cls 
rem Logi
del %HomePath%\AppData\LocalLow\*.log /a /s /q /f 2>nul
del %HomePath%\AppData\Roaming\*.log /a /s /q /f 2>nul
del %ProgramFiles%\*.log /a /s /q /f 2>nul
del %ProgramFiles(x86)%\*.log /a /s /q /f 2>nul
del %SystemRoot%\System32\*.log /a /s /q /f 2>nul
del %SystemRoot%\System32\*.tmp /a /s /q /f 2>nul
del %SystemRoot%\System32\LogFiles\*.* /a /s /q /f 2>nul
del %WinDir%\Logs\*.log /a /s /q /f 2>nul
del %WinDir%\Logs\*.etl /a /s /q /f 2>nul
del %WinDir%\SoftwareDistribution\DataStore\*.log /a /s /q /f 2>nul 
del %SystemDrive%\ProgramData\USOShared\Logs\User\*.etl /a /s /q /f 2>nul 
del %WinDir%\setupact.log
del %WinDir%\setuperr.log
cd C:
rd /s /q C:\$Recycle.bin
color a
rem Wszystko
del /s /f /q %WinDir%\Prefetch\*.* 2>nul 
del /s /f /q %Temp%\*.* 2>nul 
del /s /f /q %AppData%\Temp\*.* 2>nul 
del /s /f /q %HomePath%\AppData\LocalLow\Temp\*.* 2>nul 
rd /s /q %WinDir%\Prefetch 
rd /s /q %Temp% 
rd /s /q %AppData%\Temp 
rd /s /q %HomePath%\AppData\LocalLow\Temp 
rd /s /q %SystemDrive%\AMD 
rd /s /q %SystemDrive%\NVIDIA 
rd /s /q %SystemDrive%\INTEL 
md %WinDir%\Temp 
md %WinDir%\Prefetch 
md %Temp% 
md %AppData%\Temp 
md %HomePath%\AppData\LocalLow\Temp 
cd C:/
rem Crash Dumpy
del /s /f /q %LocalAppData%\CrashDumps\*.* 2>nul 
rem Cache directX
rd /s /q %LocalAppData%\D3DSCache 2>nul
md %LocalAppData%\D3DSCache 2>nul
cd C:/
color 8
cd %AppData%
rem Niepotrzebne pliki instalatora BetterDiscord
rd /s /q "BetterDiscord Installer" 
del /s /f /q obs-studio\logs\*.* 2>nul
del /s /f /q obs-studio\crashes\*.* 2>nul
rd /s /q obs-studio\plugin_config\obs-browser\Cache
rd /s /q obs-studio\plugin_config\obs-browser\"Code Cache"
rd /s /q obs-studio\plugin_config\obs-browser\GPUCache
rem Crystal Launcher
rd /s /q Crystal-Launcher\cache  
rem Discord
rd /s /q discord\Cache
rd /s /q discord\"Code Cache"\js
rd /s /q discord\GPUCache
rem Lunar Client
rd /s /q lunarclient\Cache 
rem Minecraft
del /s /f /q %appdata%\.minecraft\crash-reports\*.* 2>nul
del /s /f /q %appdata%\.minecraft\logs\*.* 2>nul
rem Logitech G-HUB
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
cd %AppData%
color b
rem VSCode
del /s /f /q Code\Cache\Cache_Data\*.*
del /s /f /q Code\"Code Cache"\*.*
rd /s /q Code\logs
:exit
rem Reset eksploratora plikow bo odswieza wszystko
taskkill /F /IM explorer.exe & start explorer
exit
rem if u are stealing my code please just add me to the credit @Chinchill#5925 (Discord)
