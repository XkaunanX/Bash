#!/bin/bash

#Realice un script que reciba como parametro un directorio y guarde en un
#archivo
#llamado pto2 los nombres de los archivos que tienen permiso de ejecucion para 
#el grupo y fueron modificados en los ultimos 2 dias. Tener en cuenta los
#subdirectorios.

#Hacer las validaciones pertinentes.

if [ ! -d "$1" ];
then
	echo "Debe ser directorio"
	exit
fi

touch pto2.txt

find $1 -type f -mtime -2 -perm /g=x >> "pto2.txt"