@echo off
REM jmu 02.02.12,bs, 12.04.07; Gg, 11.04.03
echo **********************************************************
echo *** Automatische Konvertierung von eps- in pdf-Dateien ***
echo **********************************************************
echo   .
@echo on
@echo Konvertierung nach pdf
for %%i in (..\*.eps) do epstopdf %%i 
@echo off
@echo verschieben der eps-Dateien in Ordner
IF NOT EXIST ..\eps_converted_to_pdf md ..\eps_converted_to_pdf
move ..\*.eps ..\eps_converted_to_pdf
echo .
echo Konvertierung beendet. Beenden mit [ALT-F4]
pause
