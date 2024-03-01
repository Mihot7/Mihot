@echo off

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
cls
echo Gra polega na tym aby rozbudowywac swoje miasto w roli burmistrza mieszkancy czekaja a ty na co czekasz lec i rob miasto! Autor Chudini2010
pause>nul
cls
goto start

:gra
cls
set kasa=1000
set mieszkancy=50
set dom=200
set apartament=400
set blok=450
set dzialka=150
cls
echo wpisz jak masz na imie.
set /p "imie=>>"
cls 
echo witaj %imie% ,zostaniesz burmistrzem miasta
echo.
ping localhost-n 1 >nul
echo zdecyduj jak ma sie nazywac twoje miasto
set /p "miasto=>>"
cls
echo %imie% sadze ,ze twoje %miasto% swietnie bedzie sie rozwijac
echo wybierz w jakim wojewodzstwie ma byc twoje miasto
set /p "wojewodzstwo=>>"
echo super decyzja
echo na start otrzymujesz 2000 zlotych
echo wcisnij klawisz aby rozpoczac gre
pause >nul
cls
echo ############################################################################
echo ### informacje: %kasa% zlotych # mieszkancy: %mieszkancy% godzina %time% ###

:kupno
echo 1. wybuduj dom (200 zlotych)
echo 2. wybuduj apartament (400 zlotych)
echo 3. wybuduj blok (450 zlotych)
echo 4. wybuduj dzialka (150 zlotych)
set /p wybieram:=[1;2;3;4]:
if %wybieram:%==1 goto dom1 && pause
if %wybieram:%==2 goto apartament1 && pause
if %wybieram:%==3 goto blok1 && pause
if %wybieram:%==4 goto dzialka1 && pause

echo wcisnij klawisz  aby rozpoczac gre

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
cls
set /a kasa=kasa-apartament
echo ############################################################################
echo ### informacje: %kasa% zlotych # mieszkancy: %mieszkancy% godzina %time% ###

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
cls
set /a kasa=kasa-apartament
echo ############################################################################
echo ### informacje: %kasa% zlotych # mieszkancy: %mieszkancy% godzina %time% ###

:dzialka1
cls
set /a kasa=kasa-dzialka
echo ###############################
echo #                             #                           #
echo #                             #                           #
echo #                             #                           #
echo #                             #                           #
echo #                             #                           #
echo #                             #                           #
echo #                             #                           #
echo #                             #                           #
echo #                             #                           #
echo #                             #                           #
echo ###############################
cls 
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
echo %pracownik% Czesc co mam robic
set /p "praca=>>"
ping localhost-n 2 >nul
cls 
pause
echo zrobilem teraz musisz zaplacic
echo wybierz ile mu zaplacisz
set /p "zaplac=>>"
echo %pracownik% ok dziekuje dowidzenia
pause
echo Dziennik Baltycki
echo Miasto %miasto% jest super luksusowe zapraszamy Burmistrz miasta czyli %imie% ma jednego pracownika ktory nazywa sie %pracownik% 
echo Zapraszamy do miasta
ping localhost-n 2 >nul
pause
cls
echo Wlasnie osiagnoles limit mieszkancow twoja gra sie zakonczyla
echo Dziekujemy za gre i zapraszamy do innych
echo na koniec jeszcze jedno od pracownika
echo Mam ci cos do powiedzienia zrobilem twoje zadanie
echo zapraszamy do przejscia gry jeszcze 100 razy dziekujemy!
echo Tworca Chudini2010
echo naciśnij coś
pause
set error=0
exit /b

:exit
set error=0
exit /b