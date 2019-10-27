@echo off
goto inicio

:inicio
cls
set path=%path%C:\Program Files\Java\jdk1.8.0_221\bin;
echo   /---------PLATON--------\
echo .
echo /--------COMPILACION---------\
echo  1) Compilar 
echo  0) Volver
echo \--------COMPILACION---------/
echo .
echo   \---------PLATON--------/
set/p opcion=     \Opcion:  
if %opcion% EQU 1 = goto compilar
if %opcion% EQU 0 = goto volver


:compilar
cls
set /p nombre=-Escriba el nombre del proyecto que quiera compilar:
echo .
set /p paquete=-Escriba el nombre del paquete del proyecto:
echo .
set /p clase=-Escriba el nombre de la clase:
if EXIST workspace\%nombre% (
mkdir workspace\%nombre%\obj\%paquete%
copy workspace\%nombre%\src\%paquete%\%clase%.java workspace\%nombre%\obj\%paquete%
javac workspace\%nombre%\obj\%paquete%\%clase%.java
del workspace\%nombre%\obj\%paquete%\%clase%.java
echo La compilacion del programa se ha completado) else (echo El nombre del proyecto ingresado no existe!)
goto inicio

:volver
cls
call IDE