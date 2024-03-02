@echo off

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
set error=0
exit /b
