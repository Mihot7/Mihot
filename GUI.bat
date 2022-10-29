@echo off
set Mihot_Sys_Location=%cd%
chcp 65001
cls
rem     │     ─   └    ┘    ┌    ┐    ┤    ├    ┼    ┴    ┬
type logo.txt
call PlaySound "%mihot_sys_location%\sounds\startup.wav"
timeout /t 2 /NOBREAK
:CHOOSE
cls
echo MENU - 1  │%date% %time:~0,8%│
echo ──────────┴───────────────────┘
choice /c 1N /t 1 /d n>nul
if %errorlevel%==1 goto MENU
if %errorlevel%==2 goto CHOOSE
echo proszę nie klikać CTRL+C
:MENU
cls
echo MENU - 1  │%date% %time:~0,8%│
echo ──────────┴─────┬─────────────┘
echo Kalkulator - 1  │       
echo ────────────────┤
echo ViM - 2         │
echo ────────────────┤
echo MIHOT MUSIC - 3 │
echo ────────────────┤
echo MyCityLegacy - 4│
echo ────────────────┤
echo Wyłącz - 5      │
echo ────────────────┘
echo. 
choice /c 12345N /t 1 /d n>nul
if %errorlevel%==1 goto KALKULATOR
if %errorlevel%==2 goto VIM
if %errorlevel%==3 goto MUSIC
if %errorlevel%==4 goto graolka
if %errorlevel%==5 goto exiting
if %errorlevel%==6 goto MENU
echo proszę nie klikać CTRL+C
goto MENU
:KALKULATOR
rem     │     ─   └    ┘    ┌    ┐    ┤    ├    ┼    ┴    ┬
cls
set/p dzialanie=Działanie:
set/a wynik=%dzialanie% 
echo.
echo.    ┌████████████████████████████
echo.    │████████████████████████████
echo.    │███ %dzialanie% = %wynik%
echo.    │████████████████████████████
echo.    │████████████████████████████
echo.    │████████████████████████████
echo.    └──────────────────────────┘
pause
goto CHOOSE
:WYLACZ
:exiting
cls
rem ─│└┘┌┐┤├┼┴	
echo.
echo.
echo.
echo.         ┌────────────────────┐
echo.         │  Wyłącz Mihot - 1  │
echo.         ├────────────────────┤
echo.         │ Wyłącz komputer - 2│
echo.         ├────────────────────┤
echo.         │    włącz CMD - 3   │
echo.         ├────────────────────┤
echo.         │uruchom ponownie - 4│
echo.         ├────────────────────┤
echo.         │    anuluj - 5      │
echo.         ├────────────────────┤
echo          │ tryb tekstowy - 6  │
echo.         └────────────────────┘
echo.
set/p wyb=:
if %wyb%==1 goto shutdown
if %wyb%==2 call PlaySound "%mihot_sys_location%\sounds\sound.wav" && shutdown /s
if %wyb%==3 cmd /k cd %userprofile%
if %wyb%==4 goto reboot
if %wyb%==5 cls && goto CHOOSE
if %wyb%==6 exit /b
goto exiting

:reboot
cls
color 17
echo.            MIHOT       │
echo.────────────────────────┘
echo.
echo.            URUCHAMIANIE PONOWNIE
call PlaySound "%mihot_sys_location%\sounds\sound.wav"
start cmd /c %mihot_sys_location%\Mihot_Sys.bat
exit

:shutdown
cls
color 17
echo.            MIHOT       │
echo.────────────────────────┘
echo.
echo.            WYŁĄCZANIE MIHOT
call PlaySound "%mihot_sys_location%\sounds\sound.wav"
exit
set errorcode=SHUTDOWN_CANT_BE_DONE
:vim
vim
goto choose

:graolka
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
if %wybieram:%==3 goto choose

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
if %wybieram:%==1 goto dom1
if %wybieram:%==2 goto apartament1
if %wybieram:%==3 goto blok1
if %wybieram:%==4 goto dzialka1

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
pause
ping localhost-n 1 >nul
goto CHOOSE


:music
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
goto choose