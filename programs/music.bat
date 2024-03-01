@echo off

cd ..
cd system
chcp 65001

:poczatek
cls
echo MIHOT MUSIC       │
echo ──────────────────┘
echo.
echo 1) Odtwórz plik
echo 2) Zatrzymaj muzyke
echo 3) ???
echo 4) KONIEC
echo.
set /p opcja=wybierz:
if %opcja%==1 goto play
if %opcja%==2 goto stop
if %opcja%==3 goto ???
if %opcja%==4 goto exit
goto zly_wybor

:zly_wybor
echo OPCJA NIE ZNANA.. WYBIERZ PONOWNIE!
pause
goto poczatek

:play
cls
rem     │     ─   └    ┘    ┌    ┐    ┤    ├    ┼    ┴    ┬
echo MIHOT MUSIC       │
echo ──────────────────┘
echo.
echo.
echo.
set/p x=lokalizacja (bez cudzysłowów, program automatycznie da): 
echo.
echo.
echo.
echo.
echo.                         ┌████████████████████████████████
echo.                         │████████████████████████████████
echo.                         │████████████████████████████████
echo.                         │█████ ODTWARZANIE MUZYKI ███████
echo.                         │████████████████████████████████
echo.                         │████████████████████████████████
echo.                         │████████████████████████████████
echo.                         │████████████████████████████████
echo.                         │████████████████████████████████
echo.                         └───────────────────────────────┘
start silent PlaySound "%x%"
pause
goto poczatek

:stop
cls
taskkill /f /im wscript.exe
echo.
echo.
echo.
echo.
echo.                         ┌████████████████████████████████
echo.                         │████████████████████████████████
echo.                         │████████████████████████████████
echo.                         │█████ ZATRZYMANO MUZYKE  ███████
echo.                         │████████████████████████████████
echo.                         │████████████████████████████████
echo.                         │████████████████████████████████
echo.                         │████████████████████████████████
echo.                         │████████████████████████████████
echo.                         └───────────────────────────────┘
pause
goto poczatek

:???
cls
echo SIEMA, %username%!!!!!
pause
goto poczatek

:exit
cd ..
set error=0
exit/b