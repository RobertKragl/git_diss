@echo off
REM bs 25.04.07; ca 09.04.06
echo **********************************************************
echo *** Automatische Konvertierung von jpg- in eps-Dateien ***
echo **********************************************************
echo 
@echo on
for %%I in (..\*.jpg) do jpeg2ps %%I > %%~nI.eps
@echo off
IF NOT EXIST ..\jpg_converted_to_eps md ..\jpg_converted_to_eps
IF NOT EXIST ..\..\eps md ..\..\eps
move *.eps ..\..\eps
move ..\*.jpg ..\jpg_converted_to_eps
echo .
echo Konvertierung beendet. Beenden mit [ALT-F4]
pause
