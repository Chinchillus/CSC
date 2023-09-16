rem if u are stealing my code please just add me to the credit @chinchill (Discord)
cls
@echo off
color c
MODE 140,40
set "params=%*"
cd /d "%~dp0" && ( if exist "%Temp%\getadmin.vbs" del "%Temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul  || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%Temp%\getadmin.vbs" && "%Temp%\getadmin.vbs" && exit /B )
title CSC Lite (v1.0 "Bape")
cd /
:start
echo.
echo         CCCCCCCCCCCCC    SSSSSSSSSSSSSSS          CCCCCCCCCCCCC LLLLLLLLLLL             
echo      CCC::::::::::::C  SS:::::::::::::::S      CCC::::::::::::C L:::::::::L             
echo    CC:::::::::::::::C S:::::SSSSSS::::::S    CC:::::::::::::::C L:::::::::L             
echo   C:::::CCCCCCCC::::C S:::::S     SSSSSSS   C:::::CCCCCCCC::::C LL:::::::LL             
echo  C:::::C       CCCCCC S:::::S              C:::::C       CCCCCC   L:::::L               
echo C:::::C               S:::::S             C:::::C                 L:::::L               
echo C:::::C                S::::SSSS          C:::::C                 L:::::L               
echo C:::::C                 SS::::::SSSSS     C:::::C                 L:::::L               
echo C:::::C                   SSS::::::::SS   C:::::C                 L:::::L               
echo C:::::C                      SSSSSS::::S  C:::::C                 L:::::L               
echo C:::::C                           S:::::S C:::::C                 L:::::L               
echo  C:::::C       CCCCCC             S:::::S  C:::::C       CCCCCC   L:::::L         LLLLLL
echo   C:::::CCCCCCCC::::C SSSSSSS     S:::::S   C:::::CCCCCCCC::::C LL:::::::LLLLLLLLL:::::L
echo    CC:::::::::::::::C S::::::SSSSSS:::::S    CC:::::::::::::::C L::::::::::::::::::::::L
echo      CCC::::::::::::C S:::::::::::::::SS       CCC::::::::::::C L::::::::::::::::::::::L
echo         CCCCCCCCCCCCC  SSSSSSSSSSSSSSS            CCCCCCCCCCCCC LLLLLLLLLLLLLLLLLLLLLLLL
echo.
echo Witaj, %USERNAME%!
echo.
timeout /t 1 /nobreak >nul
goto csc
:csc
cls
rd /s /q C:\$Recycle.bin 
cd C:
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
rem Reset eksploratora
taskkill /F /IM explorer.exe & start explorer
exit
rem if u are stealing my code please just add me to the credit @chinchill (Discord)