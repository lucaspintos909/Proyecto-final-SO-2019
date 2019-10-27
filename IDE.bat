@echo off
goto inicio

:inicio
cls
echo   /---------PLATON--------\
echo .
echo /-----------INICIO----------\
echo  1) Edicion
echo  2) Compilacion
echo  3) Ejecucion
echo  4) Creditos
echo  0) Salir
echo \-----------INICIO----------/
echo .
echo   \---------PLATON--------/
set /p opcion=Ingrese la opcion: 
if %opcion% EQU 1 = call programas\edicion.bat
if %opcion% EQU 2 = call programas\compilacion.bat
if %opcion% EQU 3 = call programas\ejecucion.bat
if %opcion% EQU 4 = call programas\creditos.bat
if %opcion% EQU 0 = goto salir

:salir
cls
echo   /---------CERRANDO--------\
echo
echo   \---------PROGRAMA--------/
echo            \--------/
echo             \PLATON/
exit