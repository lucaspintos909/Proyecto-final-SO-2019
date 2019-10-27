@echo off
cls
echo   /---------PLATON--------\
echo .
echo /-----------ABRIR-----------\
echo \----------PROYECTO---------/
echo .
echo   \---------PLATON--------/
set/p nombreProyecto=-Ingrese el nombre del proyecto:
echo .
set/p paquete=-Ingrese el nombre del paquete:
echo .
set/p clase=-Ingrese el nombre de la clase:
if EXIST workspace\%nombreProyecto%\src\%paquete% (
workspace\%nombreProyecto%\src\%paquete%\%clase%.java) else (echo El nombre del proyecto o el paquete ingresado no existe!)
call programas\edicion.bat