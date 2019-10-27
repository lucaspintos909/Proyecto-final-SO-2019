@echo off
cls
echo   /---------PLATON--------\
echo .
echo /----------ELIMINAR---------\
echo \----------PROYECTO---------/
echo .
echo   \---------PLATON--------/
set /p nombreCarpeta=-Ingrese el nombre del proyecto a eliminar:
if EXIST workspace\%nombreCarpeta% (rd /s workspace\%nombreCarpeta%) else (echo No se ha detectado el proyecto)
call programas\edicion.bat