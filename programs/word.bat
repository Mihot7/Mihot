@echo off

:MAIN
echo view - pokaż plik
echo new - nowy plik
echo exit - wróć do konsoli
echo delete - usuwanie plików
set /p input=Command-
if %input%==view goto view
if %input%==new goto new
if %input%==exit goto exit
if %input%==edit goto edit
if %input%==help goto help
if %input%==delete goto delete

:new
cd ..
cd userfiles
set /p words=Pisz-
set /p name=Name-
echo %words% >> %name%.mtxt
pause 
cd ..
cd programs
goto MAIN

:view
cd ..
cd userfiles

set /p file=File to open (without .txt)-

type %file%.mtxt
pause >nul
goto MAIN
:help

type help.txt
pause >nul
cd ..
cd programs
goto MAIN

:edit

echo Not Yet Implemented
pause >nul
goto main

:delete
cd ..
cd userfiles

set /p del=File to Delete-
del %del%.mtxt
echo Deleted...
pause >nul
cd ..
cd programs
goto MAIN

:exit
set error=0
exit /b