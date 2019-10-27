@echo off
set /p nombre1=-Confirme el nombre del proyecto que quiere editar:
set /p nombre2=-Ingrese el nombre nuevo del proyecto:
REN "workspace\%nombre1%" "%nombre2%"
echo Nombre cambiado exitosamente!
call programas\edicion.bat