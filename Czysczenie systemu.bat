cls

@echo off
title Czysczenie systemu (Modyfikacja skryptu zrobiona przez Chinchill#5925)
color b
rem Sprawdzenie czy uzytkownik posiada uprawnienia administratora
timeout /t 1 /nobreak > NUL
openfiles > NUL 2>&1
if %errorlevel%==0 (
    echo Rozruch...
) else (
    echo Wlacz program jako administrator.
    echo.
    echo Kliknij prawym na program i kliknij ^'Uruchom jako administator^' i sprobuj ponownie.
    echo.
    echo Nacisnij jakikolwiek przycisk aby wyjsc..
    pause > NUL
    exit
)
rem Usuwanie tempu prefetchu itp.
del /s /f /q %WinDir%\Prefetch\*.*
del /s /f /q %Temp%\*.*
del /s /f /q %AppData%\Temp\*.*
del /s /f /q %HomePath%\AppData\LocalLow\Temp\*.*
set folder="C:\Windows\Temp"
cd /d %folder%
for /F "delims=" %%i in ('dir /b') do (rmdir "%%i" /s/q || del "%%i" /s/q)

rem Usuwanie instalatorow sterownikow (bo sa juz zainstalowane)
del /s /f /q %SYSTEMDRIVE%\AMD\*.*
del /s /f /q %SYSTEMDRIVE%\NVIDIA\*.*
del /s /f /q %SYSTEMDRIVE%\INTEL\*.*

rem Usuwanie tempu, prefetchu oraz jego folderow
rd /s /q %WinDir%\Prefetch
rd /s /q %Temp%
rd /s /q %AppData%\Temp
rd /s /q %HomePath%\AppData\LocalLow\Temp

rem Czysczenie kosza
rd /s /q c:\$Recycle.Bin

rem Cache google
del /s /f /q %localappdata%\Google\Chrome\User Data\Default\Cache\Cache_Data\*.*

rem Pliki cookies google
del /s /f /q %LocalAppData%\Google\Chrome\User Data\Default\cookies\*.*

rem Usuwanie niepotrzebnych folderow sterownikow (bo sa juz zainstalowane)
rd /s /q %SYSTEMDRIVE%\AMD
rd /s /q %SYSTEMDRIVE%\NVIDIA
rd /s /q %SYSTEMDRIVE%\INTEL

rem Ponowne stworzenie folderow
md %WinDir%\Temp
md %WinDir%\Prefetch
md %Temp%
md %AppData%\Temp
md %HomePath%\AppData\LocalLow\Temp

exit
