@echo off
set procentakt=0
title MatOS Update Wizard
goto boot
:boot
echo Starting Mihot Updater...
ping localhost -n 5 >nul
chcp 65001
goto AktualizacjaMenu

:AktualizacjaMenu
cls
color 17
echo ████████████████████████████████████████████████████
echo █  Mihot Updater  █  Szybkie Akcje: Aktualizuj     █
echo ████████████████████████████████████████████████████
echo █  Witamy w aktualizatorze Michot                  █
echo █  Naciśnij dowolny przycisk aby aktualizować      █  
echo ████████████████████████████████████████████████████
pause >nul
cls
echo Nowa aktualizacja będzie lepsza i zawsze kolejna jeszcze lepsza!
echo. 
echo   %procentakt%  
echo.
ping localhost -n 120 >nul
set procentakt=65
cls
echo 
echo.
echo   %procentakt%
echo.
ping localhost -n 3 >nul
set procentakt=100
echo Aktualizacja ukończona. Naciśnij dowolny klawisz aby wyjść z instalatora i wejść do systemu.
pause >nul
exit