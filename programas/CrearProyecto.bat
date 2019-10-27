@echo off
cls
echo ------------CREAR------------
set/p nombreProyecto=-Ingrese el nombre del proyecto:
echo .
set/p paquete=-Ingrese el nombre del paquete:
echo .
set/p clase=-Ingrese el nombre de la clase:
mkdir workspace\%nombreProyecto%\src\%paquete%
echo public class %clase%{ >> workspace\%nombreProyecto%\src\%paquete%\%clase%.java
echo public static void main (String [] args){ >> workspace\%nombreProyecto%\src\%paquete%\%clase%.java
echo 		//Escriba su codigo aqui >> workspace\%nombreProyecto%\src\%paquete%\%clase%.java
echo 	} >> workspace\%nombreProyecto%\src\%paquete%\%clase%.java
echo } >> workspace\%nombreProyecto%\src\%paquete%\%clase%.java
workspace\%nombreProyecto%\src\%paquete%\%clase%.java

call programas\edicion.bat