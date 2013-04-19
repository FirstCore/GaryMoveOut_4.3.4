@echo off
color 0b
:panel
cls
echo.
echo //////////////////////////////////////////////////
echo /// GaryMoveOut_4.3.4 dbc/maps/vmaps extractor ///
echo //////////////////////////////////////////////////
echo.
echo Extract dbc/maps [1]
echo Extract vmaps	 [2]
echo Exit		 [0]
echo.
set /p opc=what is your option? 
cls
if "%opc%" == "1" goto 1_extract_dbc_maps
if "%opc%" == "2" goto 2_extract_vmaps
if "%opc%" == "0" goto exit
goto panel
:1_extract_dbc_maps
if exist dbc (del /S /Q dbc)
if exist maps (del /S /Q maps)
mapextractor.exe
echo.
echo Press any key to panel . . .
pause>nul
goto panel
:2_extract_vmaps
if exist buildings (del /S /Q buildings)
vmap4extractor.exe
if exist vmaps (del /S /Q vmaps)
if not exist vmaps (md vmaps)
vmap4assembler.exe buildings vmaps
echo.
echo Press any key to panel . . .
pause>nul
goto panel
:exit