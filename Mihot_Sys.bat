@echo off
set kernel=4.79b
cd system
call SendKey "{f11}"
set Mihot_Sys_Location=%cd%
title Mihot 14
color 09
set lang=pl_PL
chcp 65001
goto boot

:boot
set /p color=<"%mihot_sys_location%\config\color"
set /p s=<"%mihot_sys_location%\config\s"
set /p l=<"%mihot_sys_location%\config\logo"
cls
color %color%
if %l%==y type logo.txt 
echo.
echo Starting Mihot 14!...
ping localhost -n 5 >nul
echo Kernel version %kernel%
chcp 65001
if %s%==y call PlaySound "%mihot_sys_location%\sounds\startup.wav" 
echo Witamy, %username%! Data i czas: %time%. Co chcesz dziś zrobić?
goto consolestartup

:consolestartup
cd ..
echo Mihot console
echo Run help for commands.
echo.
echo.
goto console

:console
set appname=Mihot
set /p com=Command:
if %com%==WhatIsNew goto changelog&& pause>nul && goto console
if %com%==help goto helpconsole&& pause>nul && goto console
if %com%==testvirus goto VirusT&& pause>nul && goto console
if %com%==zegar goto time&& pause>nul && goto console
if %com%==usrdir goto dir&& pause>nul && goto console
if %com%==osinfo goto ver&& pause>nul && goto console
if %com%==virus goto bsod&& pause>nul && goto console
if %com%==calc goto calc && pause>nul && goto console
if %com%==cls cls goto console && pause>nul && goto console
if %com%==exit goto exiting && pause>nul && goto console
if %com%==reboot goto reboot && pause>nul && goto console
if %com%==theme goto theme && pause>nul && goto console
if %com%==testCrash set ERRORCODE=FORCED_TO_CRASH && goto error
if %com%==MyCityLegacy goto graolka2&& pause>nul && goto console
if %com%==notatki goto notatki&& pause>nul && goto console
if %com%==creators goto creators&& pause>nul && goto console
if %com%==update goto update && goto console
if %com%==music goto music && goto console
if %com%==MyCity goto graolka&& pause>nul && goto console
if %com%==relme echo szaq&& pause>nul && goto console
if %com%==settings goto settings&& pause>nul && goto console
if %com%==MyCityNew goto MyCityNew && goto console
if %com%==discord start https://discord.gg/TyZZX5CbsN && goto console
if %com%==MihotOLD goto MihotOLD && goto console
call %com%
echo Invalid command. Run help for commands.
goto console

:helpconsole
cd system
type help.txt | more
cd..
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
if %wyb%==2 shutdown /s
if %wyb%==3 cmd /k cd %userprofile%
if %wyb%==4 goto reboot
if %wyb%==5 cls && goto console
goto exiting

:reboot
cls
color 17
echo.            MIHOT       │
echo.────────────────────────┘
echo.
echo.            URUCHAMIANIE PONOWNIE
cd system
call PlaySound "%mihot_sys_location%\sounds\sound.wav"
cd ..
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
cd system
call PlaySound "%mihot_sys_location%\sounds\sound.wav"
cd ..
exit
set errorcode=SHUTDOWN_CANT_BE_DONE
goto error


:ver
echo Wersja systemu 14b2
echo Debug Update! 
echo Wersja jądra: %kernel%
echo Mihot7 2019-2024
echo No longer powered by MatOS :(
pause
goto console

:dir
cd userfiles
dir /w
pause
cd ..
goto console

:graolka2
set appname=MyCityLegacy
set error=1
cd programs
call MyCity.bat
cd ..
if %error%==1 set errorcode=APP_CRASH % && goto error
goto console

:reboot
cls
color 17
echo.            MIHOT       │
echo.────────────────────────┘
echo.
echo.            URUCHAMIANIE PONOWNIE MIHOT
cd system
call PlaySound "%mihot_sys_location%\sounds\sound.wav"
cd ..
start cmd /c %0
exit
set errorcode=REBOOT_CANT_BE_DONE
goto error


:time
echo %time%
goto console

:VirusT
set appname=VirusTEST
set error=1
cd programs
call VT.bat
if %error%==1 set errorcode=APP_CRASH % && goto error
cd ..

:error
if %error%==1 goto apperror
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

:notatki
set appname=notatki
set error=1
cd programs
call Word.bat
cd ..
if %error%==1 set errorcode=APP_CRASH % && goto error
goto console

:creators
set appname=Creators
set error=1
cd programs
call creators.bat
cd ..
if %error%==1 set errorcode=APP_CRASH % && goto error
goto console


:update
start http://mihot7.github.io/latest.txt
pause
goto console

:calc
set appname=Kalkulator
set error=1
cd programs
call calc.bat
cd..
if %error%==1 set errorcode=APP_CRASH % && goto error
goto console

:changelog
cd system
type changelog.txt
cd..
pause
goto console


:music
set appname=MihotMusic
set error=1
cd programs
call music.bat
if %error%==1 set errorcode=APP_CRASH % && goto error
goto console

:graolka
set appname=MyCityRemastered
set error=1
cd programs
cd MyCityRemastered
call MyCity.bat
cd ..
cd ..
if %error%==1 set errorcode=APP_CRASH % && goto error
goto console

:settings
set appname=Settings
set error=1
cd system
call settings.bat
cd ..
if %error%==1 set errorcode=APP_CRASH % && goto error
goto console

:MyCityNew
set appname=MyCityNew
set error=1
cd programs
cd MyCityNew
call MyCity.bat
cd ..
cd ..
if %error%==1 set errorcode=APP_CRASH % && goto error
goto console

:apperror
cls
cd system
type error.txt
cd ..
echo.     Program %appname% NAPOTKAŁ BŁĄD!
echo.      KOD BŁEDU: %ERRORCODE%
echo. KLIKNIJ DOWOLNY PRZYCISK ABY WRÓCIĆ DO MIHOT CONSOLE
pause>nul
goto console

:MihotOLD
echo Uruchamianie Mihot 0.2! (Kernel 0.0.21a)
pause
cd system
cd Mihot.old
call Mihot_sys.bat
color %color%
cd ..
cd ..
echo Wrócono do systemu Mihot 14 (Kernel: %kernel%)
goto console