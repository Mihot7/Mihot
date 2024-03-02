:poczatek
echo ———————————————–—————–
echo Wybierz z wersje listy
echo ———————————————–—————–
echo.
echo 1) Mihot 0.2 (Kernel 0.0.21a)
echo 2) Mihot 3.1 PLUS (Kernel 1.2)
echo 3) exit
echo.
set /p opcja=wybierz:
if %opcja%==1 goto opcja1
if %opcja%==2 goto opcja2
if %opcja%==3 goto opcja3
if %opcja%==4 goto exit
goto zly_wybor
:opcja1
echo Uruchamianie Mihot 0.2!
pause
cd Mihot02
call Mihot_Sys.bat
echo Zwrócono kontrole do systemu Mihot %ver% (Kernel: %kernel%)
cd ..
goto exit

:opcja2
echo Uruchamianie Mihot 3.1!
pause
cd Mihot31
call Mihot_Sys.bat
echo Zwrócono kontrole do systemu Mihot %ver% (Kernel: %kernel%)
cd ..
goto exit

:exit
color %color%
exit /b

:zly_wybor
echo OPCJA NIE ZNANA.. WYBIERZ PONOWNIE!
pause
goto poczatek