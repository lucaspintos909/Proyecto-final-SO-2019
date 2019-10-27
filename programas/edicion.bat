@echo off
goto inicio
:inicio	
cls
echo ----------EDICION----------
echo - 1) Modificar            - 
echo - 2) Crear                - 
echo - 3) Eliminar             -
echo - 4) Abrir                -
echo - 0) Volver               - 
echo ----------EDICION---------- 
set/p opcion=- Opcion: 
if %opcion% EQU 1 = call programas\ModificarProyecto.bat
if %opcion% EQU 2 = call programas\CrearProyecto.bat
if %opcion% EQU 3 = call programas\EliminarProyecto.bat
if %opcion% EQU 4 = call programas\AbrirProyecto.bat
if %opcion% EQU 0 = call IDE