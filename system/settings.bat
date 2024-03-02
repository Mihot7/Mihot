@echo off
cd config
:poczatek
echo ———————————————–
echo Mihot Settings
echo ———————————————–
echo.
echo 1) SYSTEM COLOR
echo 2) Dzwięk uruchamiania
echo 3) Pokazuj logo.
echo 4) KONIEC
echo.
set /p opcja=wybierz:
if %opcja%==1 goto opcja1
if %opcja%==2 goto opcja2
if %opcja%==3 goto opcja3
if %opcja%==4 goto e
goto zly_wybor

:opcja1
Echo Wybierz kolor! (Użyj systemu kolorów cmd, np. 0a. Aby uzyskać więcej informacji wprowadz "?".)
set /p color=KOLOR:
del color
copy clean color
echo %color%>"color"
color %color%
echo Motyw zastosowany!
pause
goto poczatek

:opcja2
echo Czy chcesz słyszeć dzwięk podczas uruchamiania? (y/n)
set /p s=(y/n)
del s
copy clean s
echo %s%>"s"
pause
goto poczatek

:opcja3
echo Czy chcesz widzieć logo podczas uruchamiania? (y/n)
set /p l=(y/n) 
del logo
copy clean logo
echo %l%>"logo"
pause
goto poczatek

:zly_wybor
echo OPCJA NIE ZNANA.. WYBIERZ PONOWNIE!
pause
goto poczatek

:e
cd ..
set error=0
exit /b