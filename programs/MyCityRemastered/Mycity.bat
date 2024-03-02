@echo off

type Logo.txt
echo.
echo -----------------------------------
echo ----------Witaj w Grze ------------
echo -----------------------------------

:start
echo 1. Zacznij Gre
echo 2. Instrukcja
echo 3. Wyjdz z Gry
set /p wybieram:=[1;2;3]:
if %wybieram:%==1 goto gra
if %wybieram:%==2 goto instrukcja
if %wybieram:%==3 goto exit

:instrukcja
echo Gra polega na tym aby rozbudowywac swoje miasto w roli burmistrza. Mieszkancy czekaja a ty na co czekasz lec i buduj miasto!
echo Autor Chudini2010
echo Remaster by Mihot7 2024
pause>nul

goto start

:gra
set kasa=1000
set mieszkancy=50
set dom=200
set apartament=400
set blok=450
set dzialka=150
cls
echo Jak masz na imie?
set /p "imie=>>"
cls 
echo Witaj %imie%, zostaniesz burmistrzem miasta!
echo.
ping localhost-n 1 >nul
echo Zdecyduj jak ma sie nazywac twoje miasto.
set /p "miasto=>>"
cls
echo %imie% sadze ,ze twoje %miasto% swietnie bedzie sie rozwijac
echo Wybierz w jakim wojewodzstwie ma byc twoje miasto
set /p "wojewodzstwo=>>"
echo Super decyzja, %imie%!
echo Na start otrzymujesz 2000 zlotych.
echo Wcisnij klawisz  aby rozpoczac gre!
pause >nul
cls
echo ############################################################################
echo ### informacje: %kasa% zlotych # mieszkancy: %mieszkancy% godzina %time% ###

:kupno
echo 1. wybuduj dom (200 zlotych)
echo 2. wybuduj apartament (400 zlotych)
echo 3. wybuduj blok (450 zlotych)
set /p wybieram:=[1;2;3]:
if %wybieram:%==1 goto dom1 && pause
if %wybieram:%==2 goto apartament1 && pause
if %wybieram:%==3 goto blok1 && pause


:apartament1
cls
set /a kasa=kasa-apartament
echo ############################################################################
echo ### informacje: %kasa% zlotych # mieszkancy: %mieszkancy% godzina %time% ###
echo ---------------------------------------------------------------------------- 
echo    #
echo   ###
echo #######
echo #     # 
echo #     # 
echo #     # 
echo #     #
echo #######
echo.
echo. 
echo -----------------------------------------------------------------------------------
pause
goto dalej

:dom1
cls
set /a kasa=kasa-dom
echo     #
echo   #  #
echo  #    #
echo ########
echo #      #
echo #      #
echo #      #
echo ########
set /a kasa=kasa-apartament
echo ############################################################################
echo ### informacje: %kasa% zlotych # mieszkancy: %mieszkancy% godzina %time% ###
pause
goto dalej

:blok1
cls
set /a kasa=kasa-blok
echo ######
echo #        #
echo #        #
echo #        #
echo #        #
echo #        #
echo #        #
echo #        #
echo ######
set /a kasa=kasa-apartament
echo ############################################################################
echo ### informacje: %kasa% zlotych # mieszkancy: %mieszkancy% godzina %time% ###
pause
 goto dalej

:dalej
echo Dziennik Baltycki
echo Miasto %miasto% super sie rozwija burmistrz ma na imie %imie% zapraszamy do miasta
echo zatrudnij pracownika 
echo Michal informatyk         Mariusz hydraulik
echo Toffik konsument          Oskar Budowniczy 
pause
echo Wybierz pracownika
set /p "pracownik=>>"
echo super decyzja %imie%
ping localhost-n 2 >nul
cls
pause
echo %pracownik% Czesc, co mam robic?
set /p "praca=>>"
ping localhost-n 2 >nul
cls 
pause
echo Zrobiłem, proszę o zapłate za wykonaną czynność.
echo Wybierz ile mu zaplacisz!
echo Hajs podaj np. "0"
set /p "zaplac=>>"
if %zaplac%==0 goto zlosc
echo %pracownik% ok dziekuje dowidzenia
pause
echo Dziennik Baltycki
echo Miasto %miasto% jest super luksusowe, zapraszamy!
ping localhost-n 2 >nul
pause
cls
echo Wlasnie osiagnoles limit mieszkancow twoja gra sie zakonczyla.
echo Dziekujemy za gre i zapraszamy do innych! (Chociaż toffix już nie pisze gier pod Mihota. xD)
echo Zapraszamy do przejscia gry jeszcze 100 razy! Dziekujemy!
echo Tworca Chudini2010 - Remaster 2024 Mihot7
pause
goto exit

:zlosc
echo CZEMU MI NIE ZAPLACILES?
echo CO TY SOBIE MYSLISZ!
pause
goto a

:a
Przegrałeś LOL.
goto exit

:exit
set error=0
exit /b