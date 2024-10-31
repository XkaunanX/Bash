#!/bin/bash

#Dado el directorio "directo1" que debe ser pasado como parametro, calcular
#la cantidad de lineas que tiene cada uno de los archivos ordinarios ubicados
#en el primer nivel del directorio. Dejar en el archivo de nombre "informe" el
#nombre del mismo con su correspondiente cantidad de lineas, y al final del mismo
#dejar la cantidad de archivos procesados.
#Chequear que se pase el parametro y que el mismo sea un directorio.

#Ejemplo del contenido del archivo informe:

#Cantidad de lineas del archivo xxxx = 20
#Cantidad de lienas del archivo yyyy = 5
#----------------------------------------
#----------------------------------------

#Cantidad total de archivos ordinarios procesados = 100

if [ ! -d "$1" ];
then
	echo "Debe ser directorio"
	exit
fi

c=0

echo "Lineas	Nombre" > "$1/informe.txt"
echo "" >> "$1/informe.txt"

for item in $(find "$1" -maxdepth 1 -type f);
do
	#nombre con cantidad de lineas
	wc -l "$item" >> "$1/informe.txt"
	echo "" >> "$1/informe.txt"
	#contar
	c=$((c + 1))
done

echo "cantidad de procesados: $c" >> "$1/informe.txt"