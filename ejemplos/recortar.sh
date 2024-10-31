#!/bin/bash

#Realizar un script que reciba un directorio por parametro y lo recorra haciendo
#lo siguiente:
#A los archivos que tengan mas de 10 lineas debe dejar solo las primeras 10
#lineas en un archivo nuevo llamado "nombre_archivo_recortado" (por ejemplo si
#el archivo se llama script_ejemplo.sh el nombre del archivo recortado deberia
#ser script_ejemplo.sh_recortado), finalmente debe informar la cantidad de
#archivos que se recortaron, y el promedio de lineas que tienen los archivos
#originales (o sea antes de ser recortados).

if [ ! -d "$1" ];then
	echo "Parametro 1 no es directorio"
	exit
fi

rec=0
prom=0

for it in "$1"/*
do
	if [ -f "$it" ] && [ "$(wc -l < $it)" -gt 10 ]; then
		rec=$((rec + 1))
		L="$(wc -l < $it)"
		prom=$((prom + L))
		echo "Nombre del archivo $(basename "$it")"
		nom="$(basename "$it")_recortado"
		touch "$nom"
		head "$it" >> "$nom"
	fi 
done

prom=$((prom / rec))

echo "rec: $rec"
echo "prom: $prom"