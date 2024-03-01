@echo off
title Mihot 0.2 beta Bat Edition
color 07
set lang=pl_PL
goto boot

:boot
echo Starting Mihot 0.2 ...
ping localhost -n 5 >nul
chcp 65001
echo Witamy, %username%
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
cls
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
pause
goto console

:exiting
echo Shutting Down...
ping localhost -n 3 >nul
exit /b

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
echo Rebooting system...
ping localhost -n 8 >nul
cls
goto consolestartup

:calc
echo Loading...calc.exe
ping localhost -n 10 >null
echo Witaj w Mikalkulator 1.0!
pause > nul

cls
set /p calc=Wpisz dzialanie na Numlock
set /a calc=%calc%
echo %calc%=%calc2%
pause > nul
cls
goto console

:bsod
color 1A
echo Niestety... twój komputer napotkał Poważny problem.
echo Trzeba uruchomić ponownie system
echo kod błędu (%random%)
pause
goto boot