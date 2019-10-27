@echo off
goto inicio


:inicio
cls
echo   /---------PLATON---------\
echo .
echo /----------EJECUCION---------\
echo  1) Ejecutar proyecto
echo  0) Volver
echo \----------EJECUCION---------/
echo .
echo   \---------PLATON---------/
set/p opcion=     \Opcion:  
if %opcion% EQU 1 = goto ejecutar
if %opcion% EQU 0 = call IDE


:ejecutar
cls
set path=%path%C:\Program Files\Java\jdk1.8.0_221\bin;
set /p nombre=Escriba el nombre de la carpeta del proyecto:
echo .
set /p paquete=-Escriba el nombre del paquete del proyecto:
echo .
set /p clase=-Escriba el nombre del programa que quiera ejecutar:
if EXIST workspace\%nombre%\obj\%paquete% (
cd workspace\%nombre%\obj\%paquete%
set CLASSPATH=%CLASSPATH%.;C:\Users\Cliente\Documents\GitKraken\ProyectoSO\workspace\%nombre%\obj\%paquete%\%clase%
del workspace\%nombre%\obj\%paquete%\%clase%.java
java workspace\%nombre%\obj\%paquete%\%clase%
echo La ejecucion del programa se ha completado) else (echo El nombre del proyecto ingresado no existe!)
goto inicio
