@echo off
color 07
set lang=pl_PL
goto boot

:boot
color 07
echo Starting Mihot 3.1 ...
ping localhost -n 5 >nul
chcp 65001
echo Witamy, %username% czas: %time%
goto consolestartup

:consolestartup
color 07
echo Mihot console BETA
echo Run help for commands.
echo.
echo.
goto console
:console
set /p com=Command:
if %com%==help goto helpconsole&& pause>nul && goto console
if %com%==testvirus goto VirusT&& pause>nul && goto console
if %com%==zegar goto time&& pause>nul && goto console
if %com%==MyCity goto graolka&& pause>nul && goto console
if %com%==dir goto dir&& pause>nul && goto console
if %com%==ver goto ver&& pause>nul && goto console
if %com%==cmd goto cmd&& pause>nul && goto console
if %com%==virus goto bsod&& pause>nul && goto console
if %com%==kalkulator goto calc&& pause>nul && goto console
if %com%==comodore goto comodore && pause>nul && goto console
if %com%==cls cls goto console && pause>nul && goto console
if %com%==update start Mihot_Update.bat && pause>nul && goto console
if %com%==exit goto exiting && pause>nul && goto console
if %com%==activate goto aktywacja && pause>nul && goto console
if %com%==reboot goto reboot && pause>nul && goto console
echo.
echo Invalid command. Run help for commands.
color 4F
ping localhost -n 2 >nul
color 07
goto console

:comodore
color 5F
echo READY.
pause >nul
cls
goto consolestartup

:helpconsole
echo 1. comodore - BETA: Emitowanie systemu comodore 64 (Nie poleca się używania tej komendy)
echo 2. cls - Czyści ekran
echo 3. exit - Wyłącza system
echo 4. activate - aktywacja klucza produktu
echo 5. reboot - Ponownie uruchamia system
echo 6. update - narzędzie do aktyłalizacji systemu.
echo 7. kalkulator - zwykły kalkulator w bat ;)
echo 8. virus - ??? (w celach humorystycznych)
echo 9. cmd - port do cmd
echo 10. ver - info o systemie
echo 11. dir - pokazuje zawartość folderu ze systemem
echo 12. MyCity - gra wykonana przez mojego kolege :)
echo 13. zegar - automatycznie odświerzany zegar (NIE ZALECANE)
echo 14. testvirus - Baza danych wirusów (emulacja)
pause
goto console

:exiting
echo Shutting Down...
ping localhost -n 3 >nul
exit /b


:aktywacja
echo █████████████████    ██████████
echo █  Podaj klucz  █    ████  ███████████
echo █████████████████    ██████████   █  █
set /p klucz=xxxxxxxxxxxxxxxx:
if %klucz%== 568778654126530 goto kluczhome
if not %klucz%== 568778654126530 goto nieprawidlowyklucz

:kluczhome
echo █████████████████████████████████████████████████████████████
echo █  To jest klucz do wersji Home                                 █
echo █  Naciśnij dowolny klawisz, aby aktywować klucz i go użyć  █
echo █████████████████████████████████████████████████████████████
pause >nul
cls
goto console

:nieprawidlowyklucz
echo Ten klucz jest nieprawidłowy!!!
pause
goto console

:reboot
echo Rebooting system...
ping localhost -n 8 >nul
cls
goto consolestartup

:calc
echo Loading...calc.exe
ping localhost -n 10 >null
echo Witaj w Mikalkulator 1.0!
echo naciśni byle co aby rozpocząć....
pause > nul

set /p calc=Wpisz dzialanie na Numlock
set /a calc=%calc%
echo %calc%=%calc2%
pause > nul
goto console

:bsod
cls
color 1A
echo Niestety... twój komputer napotkał Poważny problem.
echo Trzeba uruchomić ponownie system
echo kod błędu (%random%)
pause
goto boot


:cmd
start
echo w nowym oknie masz czyste cmd
pause
goto console

:ver
echo Wersja systemu 3.1 FINAL!!!!!
echo Mihot Corp. 2014-2021
echo Powered by MatOS
pause
goto console

:dir
dir /w
pause
goto console

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
if %wybieram:%==3 goto exit

:exit
goto console

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
goto bsod







:time
echo %time%
goto time

:VirusT
echo ####################
echo # Baw sie Virusami #
echo ####################

:s
color 07
echo 1. Matrix
echo 2. Virus kolegi
echo 3. Blue dead
echo 4. Red virus
echo 5. Warning 
echo 6. exit
set /p wybieram:=[1;2;3;4;5]:
if %wybieram:%==1 goto Matrix
if %wybieram:%==2 goto Virus kolegi
if %wybieram:%==3 goto Blue dead
if %wybieram:%==4 goto Red virus 
if %wybieram:%==5 goto Warning 
if %wybieram:%==6 goto f

:Matrix
color 0a
echo 001000010101001011000
goto Matrix
pause

:Virus kolegi  
cls
color 1A
echo Niestety... twój komputer napotkał Poważny problem.
echo Trzeba uruchomić ponownie system
echo kod błędu (%random%)
pause
goto s

:Blue dead
cls
color 1A
echo                                      Windows
echo                            An error has occurred. To continue:
echo    pls enter to retrune to windows. or press ctrl+alt+delete to restart you computer. if you do this,
echo                     you will lose an you unsafed information in all open aplications.
echo.                                                                                                                                            
echo                                 Error: 0e : 016f :bff9b3d4
pause
cls
goto s

:Red virus
cls
color 4a
echo RED VIRUS HAS DESTROY YOUR COMPUTER HAHAHAHAHAH 
echo deleting...................
pause
cls 
goto s

:Warning
cls
color 1A
echo instaling viruses
echo instaling trojans
echo uninstaling antiviruses
echo delete drive..
echo destroy computer...
echo destroy colors
ping localhost-n 1 >nul
color 0a
ping localhost-n 1 >nul
color 4a
ping localhost-n 1 >nul
color 0b
ping localhost-n 1 >nul
color 5a
ping localhost-n 1 >nul
echo destroy your computer hahhahahah
pause
cls
goto s

:f
goto console




