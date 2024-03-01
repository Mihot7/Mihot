@echo off
:Logo
type Logo.txt
pause

:start
echo -----------------------------------
echo ----------Witaj w Grze ------------
echo -----------------------------------
echo 1. Zacznij gre
echo 2. Instrukcja 
echo 3. Exit
set /p wybieram:={1;2;3}:
if %wybieram:%==1 goto Zacznij gre
if %wybieram:%==2 goto Instrukcja
if %wybieram:%==3 goto Exit

:Exit
set %error%=0
exit /b

:Instrukcja
cls
echo Witaj w grze w ktorej zostaniesz burmistrzem miasta bedziesz budowal budynki i zatrudnial pracownikow
pause>nul
cls
goto start

:Zacznij gre
cls
set osiedle=1000
set kasa=1000
set mieszkancy=50
set dom=150
set wiezowiec=500
set blok=350
set stadion=1000
set basen=430
set kino=350
set podstawa=350
set wyzsze=435
set woda=675
set brakkasy=5000
set brakludzi=5000
set goscie=100
set duzogosci=200
set minigosci=25
set jarmark=100
set foodtruck=150
set festyn=300
set jarmark2=1000
set foodtruck2=300
set festyn2=550
set domrodzinny=300

cls
echo Witaj w grze wpisz jak masz na imie.
set /p "imie=>>"
cls
echo Witaj %imie% 
pause
cls
echo Teraz wpsiz nazwe swojego miasta
set /p "miasto=>>"
cls
echo A teraz w jakim wojewodzstwie bedzie
set /p "wojewodzstwo=>>"
cls
echo Ustal swoj podpis ktorym bedziesz podpisywal umowy
set /p "podpis=>>"
cls
echo Dobrze witam %imie% jestes burmistrzem miasta %miasto% w wojewodzstwie %wojewodzstwo% wiec zaczynajmy 
echo Na start dostajesz 1000$
echo Wcisnij klawisz aby rozpaczac gre
pause >nul
cls
echo ####################################################
echo ## kasa: %kasa% ludzie: %mieszkancy% czas: %time% ##
echo ####################################################
echo.
echo.
echo Twoje miasto jest puste

:kupno
echo 1. wybuduj dom 150
echo 2. wybuduj wiezowiec 500
echo 3. wybuduj blok 350
set /p wybieram:={1;2;3}:
if %wybieram:%==1 goto dom1
if %wybieram:%==2 goto wiezowiec1
if %wybieram:%==3 goto blok1

:wiezowiec1
cls
set /a kasa=kasa-wiezowiec
echo ####################################################
echo ## kasa: %kasa% ludzie: %mieszkancy% czas: %time% ##
echo ####################################################
echo ____________________________________________________
echo         #
echo         #
echo        ###
echo     ########
echo #################
echo # @ @ @ @ @ @ @ #
echo # @ @ @ @ @ @ @ #
echo # @ @ @ @ @ @ @ #
echo # @ @ @ @ @ @ @ #
echo # @ @ @ @ @ @ @ #
echo # @ @ @ @ @ @ @ #
echo # @ @ @ @ @ @ @ #
echo # @ @ @ @ @ @ @ #
echo # @ @ @ @ @ @ @ #
echo # @ @ @ @ @ @ @ #
echo # @ @ @ @ @ @ @ #
echo #################
echo.
echo.
echo -------------------------------------------
pause
goto cz1

:dom1
cls
set /a kasa=kasa-dom
echo ####################################################
echo ## kasa: %kasa% ludzie: %mieszkancy% czas: %time% ##
echo ####################################################
echo ____________________________________________________
echo           #
echo         ## ##
echo        #     #
echo       #       # 
echo     ##         ##
echo    #     @@@     #
echo   #     @@@@@     #
echo  #       @@@       #
echo #                   #
echo #####################
echo #                   #
echo #                   #
echo # @@@@@@            #
echo # @@@@@@     ###### #
echo # @@@@@@     #    # #
echo #            #   0# #
echo #            #    # #
echo #####################
echo.
echo.
echo -------------------------------------------
pause
goto cz1

:blok1
cls
set /a kasa=kasa-blok
echo ####################################################
echo ## kasa: %kasa% ludzie: %mieszkancy% czas: %time% ##
echo ####################################################
echo ____________________________________________________
echo ####################################################
echo #                                                  #
echo #   @@@@    @@@@    @@@@    @@@@    @@@@    @@@@   #
echo #   @@@@    @@@@    @@@@    @@@@    @@@@    @@@@   #
echo #                                                  #
echo #   @@@@    @@@@    @@@@    @@@@    @@@@    @@@@   #
echo #   @@@@    @@@@    @@@@    @@@@    @@@@    @@@@   #
echo #                                                  #
echo #   @@@@    @@@@    @@@@    @@@@    @@@@    @@@@   #
echo #   @@@@    @@@@    @@@@    @@@@    @@@@    @@@@   #
echo #                                                  #
echo #   @@@@    @@@@    @@@@    @@@@    @@@@    @@@@   #
echo #   @@@@    @@@@    @@@@    @@@@    @@@@    @@@@   #
echo #                                                  #
echo #   @@@@    @@@@    @@@@    @@@@    @@@@    @@@@   #
echo #   @@@@    @@@@    @@@@    @@@@    @@@@    @@@@   #
echo #                                                  #
echo #                                                  #
echo ####################################################                                                  
echo.
echo.
echo -------------------------------------------
pause
goto cz1

:cz1
cls
echo ##################@ZawszePomorze################
echo Miasto %miasto% w wojewodzstwie %wojewodzstwo% 
echo super sie rozwija burmistrzem jest %imie%
echo zyczymy dalszego tak dobrego rozwoju
echo.
echo                          Tekst:Olek.K
echo ###############################################
pause
goto cz2

:cz2
cls
echo Czas zatrudnic menadzera 
echo.
echo 1. zatrudnij Kasia (26 lat)
echo 2. zatrudnij Olek (41 lat)
echo 3. zatrudnij Slawek (55 lat)
echo 4. zatrudnij Helena (32 lat)
set /p wybieram:={1;2;3;4}:
if %wybieram:%==1 goto Kasia1
if %wybieram:%==2 goto Olek1
if %wybieram:%==3 goto Slawek1
if %wybieram:%==4 goto Helena1

:Kasia1
cls
set /a kasa=kasa+wiezowiec
echo ####################################################
echo ## kasa: %kasa% ludzie: %mieszkancy% czas: %time% ##
echo ####################################################
echo ____________________________________________________
echo Czesc zatrudniles mnie na menadzera przez co dostajesz 500$ bo tyle udalo mi sie zaoszczedzic
pause
goto kupno1

:Olek1
cls
set /a kasa=kasa+wiezowiec
echo.
echo Czesc zatrudniles mnie na menadzera przez co dostajesz 500$ i dodatkowy wiezowiec do miasta
echo.
echo ####################################################
echo ## kasa: %kasa% ludzie: %mieszkancy% czas: %time% ##
echo ####################################################
echo ____________________________________________________
echo         #
echo         #
echo        ###
echo     ########
echo #################
echo # @ @ @ @ @ @ @ #
echo # @ @ @ @ @ @ @ #
echo # @ @ @ @ @ @ @ #
echo # @ @ @ @ @ @ @ #
echo # @ @ @ @ @ @ @ #
echo # @ @ @ @ @ @ @ #
echo # @ @ @ @ @ @ @ #
echo # @ @ @ @ @ @ @ #
echo # @ @ @ @ @ @ @ #
echo # @ @ @ @ @ @ @ #
echo # @ @ @ @ @ @ @ #
echo #################
echo.
echo.
echo -------------------------------------------
pause
goto kupno1

:Slawek1
cls
set /a mieszkancy=mieszkancy+mieszkancy
echo.
echo Czesc zatrudniles mnie na menadzera znalazlem ludzi ktorzy zamieszkaja u ciebie w miescie jest ich 50
echo.
echo ####################################################
echo ## kasa: %kasa% ludzie: %mieszkancy% czas: %time% ##
echo ####################################################
echo ____________________________________________________
echo.
echo.
echo -------------------------------------------------------
pause
goto kupno1

:Helena1
cls
set /a kasa=kasa+dom
echo.
echo Czesc zatrudniles mnie na menadzera zaoszczedzilam 150$
echo.
echo ####################################################
echo ## kasa: %kasa% ludzie: %mieszkancy% czas: %time% ##
echo ####################################################
echo ____________________________________________________
echo.
echo.
echo -------------------------------------------------------
pause
goto kupno1

:kupno1
cls
echo.
echo ####################################################
echo ## kasa: %kasa% ludzie: %mieszkancy% czas: %time% ##
echo ####################################################
echo ____________________________________________________
echo 1. wybuduj stadion (1000$)
echo 2. wybuduj basen (430$) 
echo 3. wybuduj kino (350$) 
set /p wybieram:={1;2;3}:
if %wybieram:%==1 goto stadion
if %wybieram:%==2 goto basen
if %wybieram:%==3 goto kino

:stadion
cls
set /a kasa=kasa-stadion
echo ####################################################
echo ## kasa: %kasa% ludzie: %mieszkancy% czas: %time% ##
echo ####################################################
echo ____________________________________________________
echo                    #
echo                  #####
echo              ####     ####
echo          ####             ####
echo      ####    )           (    ####
echo     #         )         (         #
echo    #           )       (           #
echo   #           -----------           #
echo   #                                 #
echo    #           #    1    #         #
echo    #          #     1     #        #
echo    #                1              #
echo    #################################
echo.
echo.
echo -------------------------------------------
pause
goto cz3

:basen
cls
set /a kasa=kasa-basen
echo ####################################################
echo ## kasa: %kasa% ludzie: %mieszkancy% czas: %time% ##
echo ####################################################
echo ____________________________________________________
echo ################2
echo #               ################2
echo #                      #         #################
echo #                       #                        #
echo #    ))))))))))))        #                       #
echo #    ))))))))))))         #                      #
echo #    ))))))))))))          #            #   #    #
echo #    ))))))))))))            # #  #  #           #
echo #    ))))))))))))                                #
echo #    ))))))))))))                                #
echo ##################################################
echo.
echo.
echo -------------------------------------------
pause
goto cz3

:kino
cls
set /a kasa=kasa-kino
echo ####################################################
echo ## kasa: %kasa% ludzie: %mieszkancy% czas: %time% ##
echo ####################################################
echo ____________________________________________________
echo.
echo.
echo                ##################
echo                #   @@@@@@@@@@   #
echo                #                #
echo ###############################################
echo #                                             #
echo #  %%%%%%%                  $$$$$$$$$$$$$$    #
echo #  %%%%%%%                  $$$$$$$$$$$$$$    #
echo #  %%%%%%%                  $$$$$$$$$$$$$$    #
echo #  %%%%%%%                  $$$$$$$$$$$$$$    #
echo #              ##########                     #
echo #              #        #                     #
echo #              #       0#                     #
echo #  %%%%%%%     #        #   $$$$$$$$$$$$$$    #
echo #              #        #                     #
echo ###############################################
echo.
echo.
echo -------------------------------------------
pause
goto cz3

:cz3
cls
echo ##############@ZawszePomorze#################
echo Miasto %miasto% w wojewodzstwie %wojewodzstwo%
echo ktorego burmistrzem jest %imie% powiekszylo sie 
echo o kolejne budynki niech tak dalej
echo                           Tekst:Olek.K
echo.
echo -----------------------------------------------
pause 
goto cz4

:cz4
cls
echo Menadzer proponuje zrobienie czegos dla ciebie wybierz co ma zrobic
echo 1. Sprowadz mieszkancow
echo 2. Oszczedz pieniadze
echo 3. Zbuduj budynek
set /p wybieram:={1;2;3}:
if %wybieram:%==1 goto sprowadzenie 
if %wybieram:%==2 goto pieniadze 
if %wybieram:%==3 goto budynek

:sprowadzenie
cls
set /a mieszkancy=mieszkancy+mieszkancy
echo.
echo ####################################################
echo ## kasa: %kasa% ludzie: %mieszkancy% czas: %time% ##
echo ####################################################
echo ____________________________________________________
echo Udalo mi sie sprowadzilem ci mieszkancow
pause
goto cz5

:pieniadze
cls
set /a kasa=kasa+stadion
echo.
echo ####################################################
echo ## kasa: %kasa% ludzie: %mieszkancy% czas: %time% ##
echo ####################################################
echo ____________________________________________________
echo Jest oszczedzilem 1000$ prosze
pause
goto cz5

:budynek
cls
echo.
echo ####################################################
echo ## kasa: %kasa% ludzie: %mieszkancy% czas: %time% ##
echo ####################################################
echo ____________________________________________________
echo Prosze udalo mi sie zalatwic stadion
echo ____________________________________________________
echo                    #
echo                  #####
echo              ####     ####
echo          ####             ####
echo      ####    )           (    ####
echo     #         )         (         #
echo    #           )       (           #
echo   #           -----------           #
echo   #                                 #
echo    #           #    1    #         #
echo    #          #     1     #        #
echo    #                1              #
echo    #################################
echo.
echo.
echo -------------------------------------------
pause
goto cz5

:cz5
cls
echo Czas zatrudnic drugiego menadzera 
echo.
echo 1. zatrudnij Kasia (26 lat)
echo 2. zatrudnij Olek (41 lat)
echo 3. zatrudnij Slawek (55 lat)
echo 4. zatrudnij Helena (32 lat)
set /p wybieram:={1;2;3;4}:
if %wybieram:%==1 goto Kasia2
if %wybieram:%==2 goto Olek2
if %wybieram:%==3 goto Slawek2
if %wybieram:%==4 goto Helena2

:Kasia2
cls
echo ####################################################
echo ## kasa: %kasa% ludzie: %mieszkancy% czas: %time% ##
echo ####################################################
echo ____________________________________________________
echo Kupilam specjalny budynek limitowany dla ciebie jest to teatr
echo _____________________________________________________
echo    ##################              ############
echo    #   #            ################          #
echo    #    #           #               #         ######
echo    #     #           #               #             #
echo    #      #    000    #      000      #            #
echo    #       #           #               #           #
echo    #        #           #               #          #
echo    #         #            #              #         #
echo    #################################################
echo.
echo.
echo ____________________________________________________
pause
goto cz6

:Olek2
cls
set /a kasa=kasa+stadion
set /a kasa=kasa+stadion
set /a mieszkancy=mieszkancy+mieszkancy
set /a mieszkancy=mieszkancy+mieszkancy
echo ####################################################
echo ## kasa: %kasa% ludzie: %mieszkancy% czas: %time% ##
echo ####################################################
echo ____________________________________________________
echo Zaoszczedzilem 2000$ dla ciebie i sprowadzilem 100 mieszkancow
echo ---------------------------------------------------------------
pause
goto cz6

:Slawek2
cls
set /a kasa=kasa+dom
echo ####################################################
echo ## kasa: %kasa% ludzie: %mieszkancy% czas: %time% ##
echo ####################################################
echo ____________________________________________________
echo Zbudowalem budke z hotdogami i zarobilem 150$
echo      #
echo    #####
echo ############
echo      #
echo      # 
echo      #     ((((((((
echo ######################
echo #  HOT-DOGS          #
echo #                    #
echo ######################
echo -----------------------------------------------
echo.
pause
goto cz6

:Helena2
cls
echo ####################################################
echo ## kasa: %kasa% ludzie: %mieszkancy% czas: %time% ##
echo ####################################################
echo ____________________________________________________
echo Niestety nic mi sie nie udalo zrobic :(
echo --------------------------------------------
pause
goto cz6

:cz6
cls
echo ####################################################
echo ## kasa: %kasa% ludzie: %mieszkancy% czas: %time% ##
echo ####################################################
echo ____________________________________________________
echo Za to co twoj menadzer zrobil musisz mu zaplacic ale ile
echo Powiedzial ze chce 150$ za prace
echo 1. Dajesz 
echo 2. Nie dajesz
set /p wybieram:={1;2}:
if %wybieram:%==1 goto zostanie
if %wybieram:%==2 goto zwolnienie

:zostanie
cls
set /a kasa=kasa-dom
echo ####################################################
echo ## kasa: %kasa% ludzie: %mieszkancy% czas: %time% ##
echo ####################################################
echo ____________________________________________________
echo  Menadzer:Dziekuje za wyplate zostaje u ciebie
echo ----------------------------------------------------
pause
goto cz7

:zwolnienie
cls
set /a kasa=kasa-stadion
echo ####################################################
echo ## kasa: %kasa% ludzie: %mieszkancy% czas: %time% ##
echo ####################################################
echo ____________________________________________________
echo Menadzer:Nie zaplaciles mi nie mam jak zyc zwalniam sie
echo Przez to ze menadzer sie zwolnil straciles 1000$ poniewaz nie umiales rozpozadzic pieniedzmi
echo --------------------------------------------------------------------------------------------
pause
goto cz8

:cz8
cls
echo ###########@ZawszePomorze#############
echo Miasto %miasto% w wojewodzstwie
echo %wojewodzstwo% stracilo menadzera
echo przez co miasto zaczyna bankrutowac
echo                  Tekst:Olek.K
echo ########################################
pause
goto bankrut

:bankrut
cls
set /a kasa=kasa-brakkasy
set /a mieszkancy=mieszkancy-brakludzi
echo ####################################################
echo ## kasa: %kasa% ludzie: %mieszkancy% czas: %time% ##
echo ####################################################
echo ____________________________________________________
echo Przez zwolnienie menadzera miasto zbankrutowalo i ludzie wyniesli sie z %miasto% w wojewodztwie %wojewodzstwo%.
echo Burmistrz poszedl do wiezienia za swoje czyny.
pause
goto wiezienie

:wiezienie
cls
echo Prosze nie chce tu juz byc 
echo Nie wiedzialem ze to sie tak skonczy
echo Przepraszam menadzerze wyciagnij mnie z tad
echo 1. Wyciagasz z wiezienia 
echo 2. Zostawiasz w wiezieniu
set /p wybieram:={1;2}:
if %wybieram:%==1 goto Drugaszansa
if %wybieram:%==2 goto koniec

:Drugaszansa
cls
set /a kasa=kasa+brakkasy
set /a mieszkancy=mieszkancy+brakludzi
echo ####################################################
echo ## kasa: %kasa% ludzie: %mieszkancy% czas: %time% ##
echo ####################################################
echo ____________________________________________________
echo Za to co twoj menadzer zrobil musisz mu zaplacic ale ile
echo Powiedzial ze chce 150$ za prace
echo 1. Dajesz 
echo 2. Nie dajesz
set /p wybieram:={1;2}:
if %wybieram:%==1 goto zostanie2
if %wybieram:%==2 goto nauczka

:zostanie2
cls
set /a kasa=kasa-dom
echo ####################################################
echo ## kasa: %kasa% ludzie: %mieszkancy% czas: %time% ##
echo ####################################################
echo ____________________________________________________
echo  Menadzer:Dziekuje za wyplate zostaje u ciebie lecz jeszcze raz 
echo zrobisz tak jak wtedy to nie pomoge ci juz.
echo ----------------------------------------------------------------
pause
goto cz7

:nauczka
cls
echo Nie nauczyles sie jak sie przestrzega regulaminow
echo Niestety PRZEGRALES :(
echo Sprobuj jeszcze raz i zapamietaj zle decyzje
pause
goto start

:cz7
cls
echo ###########@ZawszePomorze#############
echo Miasto %miasto% w wojewodzstwie
echo %wojewodzstwo% ma nadal 2 menadzerow
echo przez co nie bankrutuje
echo                  Tekst:Olek.K
echo ########################################
pause
goto cz9

:cz9
cls
echo ####################################################
echo ## kasa: %kasa% ludzie: %mieszkancy% czas: %time% ##
echo ####################################################
echo ____________________________________________________
echo Czas zrobic 1 festyn w miescie %miasto%.
echo Menadzer pomoze ci za drobna oplata lecz festyn napewno ci sie oplaci.
echo 1. Jarmark dominikanski-koszt:100$ zarobek:800$
echo 2. Zlot foodtruckow-koszt:150$ zarobek:500$
echo 3. Festyn miejski-koszt:300$ zarobek:1000$ lub 1500$
set /p wybieram:={1;2;3}:
if %wybieram:%==1 goto Jarmark 
if %wybieram:%==2 goto Foodtruck 
if %wybieram:%==3 goto Festyn

:Jarmark
cls
set /a kasa=kasa-jarmark
set /a goscie=goscie+goscie
set /a kasa=kasa+jarmark2 
echo #####################################################################
echo ## kasa: %kasa% ludzie: %mieszkancy% goscie: %goscie% czas: %time% ##
echo #####################################################################
echo ______________________________________________________________________
echo Przez Jarmark przybylo ci troche tymczasowych ludzi  w miescie, licznik ich 
echo pojawil sie u gory kolo mieszkacow.
echo Goscie beda przynosili dodatkowy zysk i mozliwosc ze wprowadza sie do twojego miasta.
echo.
echo.
echo ###############################################################################
echo @@@@ (----)   @@@@@ @@@@ (----)   @@@@@ @@@@ (----)   @@@@@ @@@@ (----)   @@@@@
echo @@@@  (----)  @@@@@ @@@@  (----)  @@@@@ @@@@ (----)   @@@@@ @@@@  (----)  @@@@@
echo @@@@  (----)  @@@@@ @@@@  (----)  @@@@@ @@@@  (----)  @@@@@ @@@@ (----)   @@@@@
echo @@@@ (----)   @@@@@ @@@@ (----)   @@@@@ @@@@ (----)   @@@@@ @@@@ (----)   @@@@@
echo @@@@  (----)  @@@@@ @@@@  (----)  @@@@@ @@@@ (----)   @@@@@ @@@@  (----)  @@@@@
echo @@@@  (----)  @@@@@ @@@@  (----)  @@@@@ @@@@  (----)  @@@@@ @@@@ (----)   @@@@@
echo @@@@ (----)   @@@@@ @@@@ (----)   @@@@@ @@@@ (----)   @@@@@ @@@@ (----)   @@@@@
echo @@@@  (----)  @@@@@ @@@@  (----)  @@@@@ @@@@ (----)   @@@@@ @@@@  (----)  @@@@@
echo @@@@  (----)  @@@@@ @@@@  (----)  @@@@@ @@@@  (----)  @@@@@ @@@@ (----)   @@@@@
echo @@@@ (----)   @@@@@ @@@@ (----)   @@@@@ @@@@ (----)   @@@@@ @@@@ (----)   @@@@@
echo @@@@  (----)  @@@@@ @@@@  (----)  @@@@@ @@@@ (----)   @@@@@ @@@@  (----)  @@@@@
echo @@@@  (----)  @@@@@ @@@@  (----)  @@@@@ @@@@  (----)  @@@@@ @@@@ (----)   @@@@@
echo @@@@ (----)   @@@@@ @@@@ (----)   @@@@@ @@@@ (----)   @@@@@ @@@@ (----)   @@@@@
echo @@@@  (----)  @@@@@ @@@@  (----)  @@@@@ @@@@ (----)   @@@@@ @@@@  (----)  @@@@@
echo @@@@  (----)  @@@@@ @@@@  (----)  @@@@@ @@@@  (----)  @@@@@ @@@@ (----)   @@@@@
echo ###############################################################################
echo.
echo Menadzer: Jak widac jarmark jest dosyc duzy jego zyski rowniez zyski wynosza 1000$
echo to troche wiecej niz przewidywalismy lecz ludziom chyba sie spodobalo.
pause
goto cz10

:Foodtruck
cls
set /a kasa=kasa-foodtruck
set /a goscie=goscie+minigosci
set /a kasa=kasa+foodtruck2
echo #####################################################################
echo ## kasa: %kasa% ludzie: %mieszkancy% goscie: %goscie% czas: %time% ##
echo #####################################################################
echo ______________________________________________________________________
echo.
echo                   ######################################
echo                   #        BURRITOS AND NACHOS         #
echo                   #000000  -------------------         #
echo                   #000000          o o                 #
echo                   #000000         -___-                #
echo        ############       ----------------------       #
echo        # @        #                                    #
echo        #          #                                    #
echo        #        #####                     #####        #
echo        #       #  O  #                   #  O  #       #
echo        ########  OOO  ###################  OOO  ########
echo                   O                         O
echo.
echo Menadzer:Ale mamy nieszczescie akurat dzisiaj musialo padac
echo mamy malo gosci na zlocie i do tego malo pieniedzy zarobilismy
echo tylko 300$ a mialo byc ponad 500$ niestety jak pogoda zla
echo to foodtrucki nie przyjechaly i gosci nie ma :(
echo.
pause
goto cz10

:Festyn
cls
set /a kasa=kasa-festyn
set /a goscie=goscie+goscie
set /a kasa=kasa+festyn2
echo #####################################################################
echo ## kasa: %kasa% ludzie: %mieszkancy% goscie: %goscie% czas: %time% ##
echo #####################################################################
echo ______________________________________________________________________
echo.
echo      ______________________
echo     4______________________7              000
echo       1                  1                000
echo       1                  1                000
echo       1                  1                 1
echo       1                  1                 1
echo       1    @ @ @ @ @ @ @ 1            #    1   #
echo      ######################           #    1   #
echo      #                    #           ##########         
echo      #    3$ POPCORN      #           #        #
echo      #                    #           #        #
echo      #                    #           #        #
echo      ######################           #        #
echo.
echo Menadzer:Na festynie poszlo dobrze lecz zysk jest duzo mniejszy niz przewidywalismy to tylko 550$
echo niestety chyba takie festyny nie ciesza sie zbyt duzym powodzeniem.
echo Mam powod dlaczego bylo tak malo ludzi zobacz na to
echo.
echo.
echo.
echo ###########@ZawszePomorze#############
echo Miasto Duze cegly w wojewodzstwie
echo ceglastym zoorganizowalo festyn dla
echo dzieci ze zjezdzalniami przyszlo tam 
echo okolo 1000 osob bardzo udany festyn.
echo Miasto zarobilo okolo 3000$.
echo                  Tekst:Olek.K
echo ########################################
echo.
echo Mamy nieszczescie moze nastepnym razem sie uda 
pause
goto cz10

:cz10
cls
echo #####################################################################
echo ## kasa: %kasa% ludzie: %mieszkancy% goscie: %goscie% czas: %time% ##
echo #####################################################################
echo ______________________________________________________________________
echo.
echo Miales mi zaplacic za pomoc w zoorganizowaniu festynu mam nadzieje ze dasz mi premie
echo w wysokosci 300$ za to co zrobilem i za pomoc.
echo 1. Dajesz premie  
echo 2. Nie dajesz premii
set /p wybieram:={1;2}:
if %wybieram:%==1 goto cz11
if %wybieram:%==2 goto koniec

:koniec
cls
echo Przegrales :(
echo Menadzer stracil do ciebie zaufanie i zwolnil sie
echo Oto Koniec twojej gry 
echo Zagraj jescze raz i sprobuj podejmowac lepsze decyzje.
pause
goto start

:cz11
set /a kasa=kasa-festyn
cls
echo #####################################################################
echo ## kasa: %kasa% ludzie: %mieszkancy% goscie: %goscie% czas: %time% ##
echo #####################################################################
echo ______________________________________________________________________
echo Menadzer:Dziekuje ci za premie zapamietam to i sprobuje 
echo zrobic cos fajnego dla ciebie i miasta.
echo.
pause
goto cz12

:cz12
set /a kasa=kasa+wiezowiec
set /a goscie=goscie+duzogosci
cls
echo #####################################################################
echo ## kasa: %kasa% ludzie: %mieszkancy% goscie: %goscie% czas: %time% ##
echo #####################################################################
echo ______________________________________________________________________
echo.
echo Menadzer:Oto co zalatwilem dla ciebie.Mam nadzieje ze ci sie spodoba oto hotel ktory przynosi zyski okolo 1000$
echo pierwsze juz trafilo na konto lecz pomniejszone o 500$ bo tyle musialem wziasc pozyczki.
echo Zatrudnilem rowniez 5 pracownikow ktorzy beda zarabiac po 100$.
echo Oto umowa tych pracownikow:
echo.
echo #########################################################
echo # Pensja:100$                                           #
echo # Nie zaplacenie wiaze sie z pozwem do sadu             #
echo # i utrata posady burmistrza                            #
echo #                                                       #
echo #                                PODPIS: %podpis%       #
echo #########################################################  
echo.                                                    
echo Goscie przybyli juz do hotelu i mamy ich dosyc duzo bo az 200.
echo.
echo Wybierz nazwe dla hotelu w swoim miescie 
set /p "nazwahotel=>>"
echo.
echo         #
echo         #
echo        ###
echo     ########              ##########
echo ####################    # HOTEL 5* #
echo # %nazwahotel%  ##########################
echo # @ @ @   @ @ @ #                        #
echo #               #      @@@@       @@@@   #
echo # @ @ @   @ @ @ #      @@@@       @@@@   #
echo #               #                        #
echo # @ @ @   @ @ @ #      @@@@       @@@@   #
echo #               #      @@@@       @@@@   #
echo # @ @ @   @ @ @ #                        #
echo #               #                        #
echo # @ @ @   @ @ @ #         HHHHHHH        #
echo #               #        HHH   HHH       #
echo ########################################## 
echo.
pause
goto cz13

:cz13

set /a mieszkancy=mieszkancy+jarmark
set /a kasa=kasa+wiezowiec
cls
echo #####################################################################
echo ## kasa: %kasa% ludzie: %mieszkancy% goscie: %goscie% czas: %time% ##
echo #####################################################################
echo ______________________________________________________________________
echo.
echo Goscie ktorzy przyszli wczesniej do miasta chca w nim zamieszkac musisz zbudowac wiecej
echo mieszkan.Czesc gosci zamienila sie w mieszkancow.
echo Goscie z hotelu i ci ktorzy probuja zamieszkac w miescie przynosly zyski w wysokosci 500$.
echo.
echo 1. wybuduj dom rodzinny 300$
echo 2. wybuduj mini osiedle 1000$
echo 3. wybuduj falowiec 500$
set /p wybieram:={1;2;3}:
if %wybieram:%==1 goto domrodzina
if %wybieram:%==2 goto miniosiedle
if %wybieram:%==3 goto falowiec

:miniosiedle
cls
set /a goscie=goscie-duzogosci
set /a kasa=kasa-osiedle
set /a mieszkancy=mieszkancy+duzogosci
echo #####################################################################
echo ## kasa: %kasa% ludzie: %mieszkancy% goscie: %goscie% czas: %time% ##
echo #####################################################################
echo ______________________________________________________________________
echo.          
echo #############################################
echo #                                           #
echo #   @@@     ####L         @@@   @@@  @@@    #
echo #   @@@     #  # L        @@@   @@@  @@@    #
echo #           #  #  L                         #
echo #   @@@                   @@@   @@@  @@@    #
echo #   @@@     OOOOO         @@@   @@@  @@@    #
echo #   @@@     OOOOO         @@@   @@@  @@@    #
echo #           OOOOO                           #
echo #   @@@                   @@@   @@@  @@@    #
echo #   @@@    1________1     @@@   @@@  @@@    #
echo #              1                            #                                   
echo #############################################
echo.
echo.
echo -------------------------------------------
pause
goto cz14

:domrodzina
cls
set /a goscie=goscie-minigosci
set /a kasa=kasa-domrodzinny
set /a mieszkancy=mieszkancy+minigosci
echo #####################################################################
echo ## kasa: %kasa% ludzie: %mieszkancy% goscie: %goscie% czas: %time% ##
echo #####################################################################
echo ______________________________________________________________________
echo           ###########################
echo         ##                           #       
echo        #                              #
echo       #                                #
echo     ##    @@@@@@@           @@@@@@@@    ##
echo    #     @@@@@@@@@         @@@@@@@@@@     #
echo   #       @@@@@@@           @@@@@@@@       #
echo  #                                          #
echo #                                            #
echo ##############################################
echo #                     #                      #
echo #                     #                      #
echo # @@@@@@              #               @@@@@@ #
echo # @@@@@@     ######   #   #######     @@@@@@ #
echo # @@@@@@     #    #   #   #     #     @@@@@@ #
echo #            #   0#   #   #    0#            #      
echo #            #    #   #   #     #            #  
echo ##############################################
echo.
echo.
echo -------------------------------------------
pause
goto cz14

:falowiec
cls
set /a kasa=kasa-wiezowiec
set /a mieszkancy=mieszkancy+mieszkancy
set /a goscie=goscie-goscie
echo #####################################################################
echo ## kasa: %kasa% ludzie: %mieszkancy% goscie: %goscie% czas: %time% ##
echo #####################################################################
echo ______________________________________________________________________
echo ####################################################
echo #                                                  #
echo #   @@@@    @@@@    @@@@    @@@@    @@@@    @@@@   #
echo #    @@@@    @@@@    @@@@    @@@@    @@@@    @@@@  #
echo #                                                  #
echo #     @@@@    @@@@    @@@@    @@@@    @@@@    @@@@ #
echo #      @@@@    @@@@    @@@@    @@@@    @@@@    @@@@#
echo #                                                  #
echo #       @@@@    @@@@    @@@@    @@@@    @@@@    @@@#
echo #        @@@@    @@@@    @@@@    @@@@    @@@@    @@#
echo #                                                  #
echo #     @@@@    @@@@    @@@@    @@@@    @@@@    @@@@ #
echo #      @@@@    @@@@    @@@@    @@@@    @@@@    @@@@#
echo #                                                  #
echo #    @@@@    @@@@    @@@@    @@@@    @@@@    @@@@  #
echo #   @@@@    @@@@    @@@@    @@@@    @@@@    @@@@   #
echo #                                                  #
echo #                                                  #
echo ####################################################                                                  
echo.
echo.
echo -------------------------------------------
pause
goto cz14

:cz14
cls
set /a kasa=kasa+wiezowiec
echo #####################################################################
echo ## kasa: %kasa% ludzie: %mieszkancy% goscie: %goscie% czas: %time% ##
echo #####################################################################
echo ______________________________________________________________________
echo Menadzer: Hotel %nazwahotel% zaczyna na siebie zarabiac zarobil on 500$
echo lecz nie moze byc tak dobrze pracownicy hotelu chca wyplate.
echo Przypominam ze jest ich 5 i kazdy zarabia 100$
echo.
echo Zaplac wyplate w wysokosci 500$:
echo 1. Dajesz  
echo 2. Nie dajesz 
set /p wybieram:={1;2}:
if %wybieram:%==1 goto start
if %wybieram:%==2 goto zlerobisz

:zlerobisz
cls
echo Nie dales wyplaty pracownikom hotelu nie wywiazales sie przez to z umowy 
echo PRZEGRALES :(
echo Burmistrz zaplacil kare i jest zwyklym mieszkancem.
echo KONIEC GRY sprobuj jeszcze i podejmuj lepsze decyzje.
pause
goto start






