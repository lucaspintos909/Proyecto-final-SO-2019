@echo off
cls
echo ----------MODIFICAR----------
set /p nombre1=-Ingrese el nombre del proyecto que quiere editar:
if EXIST workspace\%nombre1% (
call programas\EdicionDeNombreProycto.bat) else (echo El nombre del proyecto o el paquete ingresado no existe!)
call programas\edicion.bat