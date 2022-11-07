@echo off
call SendKey "{f11}"
set Mihot_Sys_Location=%cd%
title Mihot 8.1 
color 07
set lang=pl_PL
chcp 65001
goto boot

:boot
cls
color 07
type logo.txt
echo.
echo Starting Mihot 8.1!...
ping localhost -n 5 >nul
chcp 65001
call PlaySound "%mihot_sys_location%\sounds\startup.wav"
echo Witamy, %username% czas: %time%
goto consolestartup

:consolestartup
title Mihot 8.1
color 07
echo Mihot console
echo Run help for commands.
echo.
echo.
goto console
:console
set /p com=Command:
if %com%==help goto helpconsole&& pause>nul && goto console
if %com%==vim goto vim&& pause>nul && goto console
if %com%==testvirus goto VirusT&& pause>nul && goto console
if %com%==zegar goto time&& pause>nul && goto console
if %com%==MyCityLegacy goto graolka&& pause>nul && goto console
if %com%==dir goto dir&& pause>nul && goto console
if %com%==osinfo goto ver&& pause>nul && goto console
if %com%==cmd cmd /k call MIHOT_CMD.bat && pause>nul && goto console
if %com%==virus goto bsod&& pause>nul && goto console
if %com%==kalkulator call calc && pause>nul && goto console
if %com%==comodore goto comodore && pause>nul && goto console
if %com%==cls cls goto console && pause>nul && goto console
if %com%==update start Mihot_Update.bat && pause>nul && goto console
if %com%==exit goto exiting && pause>nul && goto console
if %com%==activate goto aktywacja && pause>nul && goto console
if %com%==reboot goto reboot && pause>nul && goto console
if %com%==themePlus goto t1 && pause>nul && goto console
if %com%==tree goto tree && pause>nul && goto console
if %com%==gui call GUI && goto console
if %com%==testCrash set ERRORCODE=FORCED_TO_CRASH && goto error
if %com%==MyCityLegacy goto graolka2&& pause>nul && goto console
if %com%==notatki goto notatki&& pause>nul && goto console
if %com%==creators goto creators&& pause>nul && goto console
call %com%
goto console


:comodore
cls
color 5F
echo READY.
pause >nul
cls

:helpconsole
type help.txt | more
goto console

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
echo.         └────────────────────┘
echo.
set/p wyb=:
if %wyb%==1 goto shutdown
if %wyb%==2 call PlaySound "%mihot_sys_location%\sounds\sound.wav" && shutdown /s
if %wyb%==3 cmd /k cd %userprofile%
if %wyb%==4 goto reboot
if %wyb%==5 cls && goto console
goto exiting
:aktywacja
cls
echo █████████████████    ██████████
echo █  Podaj klucz  █    ████  ███████████
echo █████████████████    ██████████   █  █
set /p klucz=xxxxxxxxxxxxxxxx:
if %klucz%== 568778654126530 goto kluczhome
if not %klucz%== 568778654126530 goto nieprawidlowyklucz

:kluczhome
cls
echo █████████████████████████████████████████████████████████████
echo █  To jest klucz do wersji Home                                 █
echo █  Naciśnij dowolny klawisz, aby aktywować klucz i go użyć  █
echo █████████████████████████████████████████████████████████████
pause >nul
cls
goto console

:nieprawidlowyklucz

echo Ten klucz jest nieprawidłowy!!!
pause >nul
goto console

:reboot
cls
color 17
echo.            MIHOT       │
echo.────────────────────────┘
echo.
echo.            URUCHAMIANIE PONOWNIE
call PlaySound "%mihot_sys_location%\sounds\sound.wav"
start cmd /c %0
exit
set errorcode=REBOOT_CANT_BE_DONE
goto error


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
goto error

:bsod
cls
color 1A
echo Niestety... twój komputer napotkał Poważny problem.
echo Trzeba uruchomić ponownie system
echo kod błędu (%errorcode%)
pause
goto boot


:cmd
start
echo w nowym oknie masz czyste cmd
pause
goto console

:ver
echo Wersja systemu 8.1
echo Mihot Corp. 2014-2022
echo Powered by MatOS
echo I will miss you NotAdidel
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

:reboot
cls
color 17
echo.            MIHOT       │
echo.────────────────────────┘
echo.
echo.            URUCHAMIANIE PONOWNIE MIHOT
call PlaySound "%mihot_sys_location%\sounds\sound.wav"
start cmd /c %0
exit
set errorcode=REBOOT_CANT_BE_DONE
goto error


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
goto error







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
echo 010100101001001001010
echo 010100010100101001101
echo 001111011001001001001
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

:t1
color 0a
echo Motyw zastosowany!
pause
goto console

:error
cls
color 1A
echo.            MIHOT       │
echo.────────────────────────┘
echo.        MIHOT NAPOTKAŁ BŁĄD!
echo. KOD BŁEDU: %ERRORCODE%
echo. KLIKNIJ DOWOLNY PRZYCISK ABY ZRESETOWAĆ KOMPUTER
pause>nul
start cmd /c %0
exit

:vim
vim.exe
exit /b

:notatki
@echo off
color 0a
set name=Bez Nazwy
title %name% - Mihot Notepad - Mihot 8.1
:options
cls
echo ________________________________________
echo.
echo             Mihot Notepad
echo ________________________________________
echo - %name%
echo.
echo Naciśnij 0 jak chcesz edytować istniejący plik.
echo Naciśnij 1 jak chcesz zmienić nazwę pliku.
echo Naciśnij 2 jak chcesz edytować dokument.
echo Naciśnij 3 jak potrzebujesz pomocy!
echo A 4 jak chcesz wyjść

set /p wybór=">"
if %wybór%==1 goto 1
if %wybór%==2 goto 2
if %wybór%==3 goto help
if %wybór%==4 goto 4
if %wybór%==0 goto 0

cls
echo *****************************************
echo Przepraszam, ale chyba cie nie rozumiem?*
echo *****************************************
ping localhost -n 2 >nul
goto options

:1
cls
echo ________________________________________
echo.
echo             Mihot Notepad
echo ________________________________________
echo - %name%
echo. 
echo Nazwij dokument np. 'hello.txt' lub 'hello.bat'
set /p name=">"
title %name% - Mihot Notepad

goto options

:2
cls
echo ________________________________________
echo.
echo             Mihot Notepad
echo ________________________________________
echo - %name%
echo. 
echo Aby dodać nową linie kilknij enter
echo Jak chcesz skończyć pisać kilknij wielki czerwony x w rogu ekranu
echo.
echo "   > < |   " Tego NIE urzywaj bo wywalisz system
echo.
set /p content=">"
echo %content%>>%name%
cls
echo Save Successful!
ping localhost -n 2 >nul
goto 2

:help
cls
echo ________________________________________
echo.
echo             Mihot Notepad
echo ________________________________________
echo Nazwa pliku - %name%
echo. 
echo Jakieś pytania? Discord: Mihot7#2918
echo 
echo.
pause
goto options

:4
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo __Made by Mihot_________________________
echo.
echo             Mihot Notepad
echo ________________________________________
echo     Fajny notatnik
ping localhost -n 5 >nul
goto console

:0
cls
echo ________________________________________
echo.
echo             Mihot Notepad
echo ________________________________________
echo - %name%
echo. 
echo Wpisz w nazwe np. 'hello.txt' lub 'hello.bat'
echo Plik musi być w tej samej lokalizacji co pliki systemu mihot.
set /p edit=">"
edit %edit%
goto options

:creators
Color 4F
ping localhost -n 1 >nul
Color 6A
ping localhost -n 1 >nul
color 5c
ping localhost -n 1 >nul
color 0a
echo Mihot7 zd. superkolo2010 - Komendy (większość)
ping localhost -n 5 >nul
cls
color 5D
ping localhost -n 2 >nul
color 2a
ping localhost -n 2 >nul
color 4d
ping localhost -n 2 >nul
color 0a
echo Toffix zd. Chudini2010 - Gry
ping localhost -n 5 >nul
cls
color 6c
ping localhost -n 2 >nul
color 8a
ping localhost -n 2 >nul
color 3c
ping localhost -n 2 >nul
color 0a
echo NotAdidel - Gui, dzwięki, logo uruchamiania, nowe ekrany zamykania i błędu
ping localhost -n 5 >nul
cls
color 1c
ping localhost -n 2 >nul
color 7a
ping localhost -n 2 >nul
color 8c
ping localhost -n 2 >nul
color 0a
echo Pseudo zd. Pseudostudios - MatOS comodor
ping localhost -n 5 >nul
goto console