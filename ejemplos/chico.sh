#!/bin/bash

#Hacer un script que visualice un menú de dos opciones:
#**La primera llamda "Directorio" debe pedir un directorio por consola y 
#  devolver (en caso de que exista) el tamaño del archivo mas chico en Kb.
#  También se debe contabilizar la cantidad de ARCHIVOS que terminen(sic) 
#  permisos 644.
#**La segunda llamada "Archivo" debe pedir un archivo por consola y realizar
#  las siguientes tareas:
#--->Cambiar los permisos del archivo para que solo pueda ser ejecutado por
#    el dueño.
#--->Copiar el archivo a un nuevo archivo con el nombre "archivo-copiado"
#--->Borras las últimas 5 líneas del archivo y guardar la salida en un
#    archivo llamado igual que el original con el agregado al final del
#    nombre "-mod".

echo "1) Directorio"
echo "2) Archivo"

read -p "Opcion: " k

con=0

case $k in
1)
	read -p "Directorio: " dir
	if [ -d $dir ]; then
		tam=$(( $(stat -c %s "$dir") / 1024))
		for item in "$dir"/*; do
			aux=$(($(stat -c %s "$item") / 1024))
			if [ $aux -lt $tam ]; then
				tam=$aux
			fi
			perm=$(stat -c "%a" "$item")
			if [ "$perm" -eq 644 ]; then
				con=$((con + 1))
			fi
		done
		echo "menor: $tam"
		echo "cantidad con: $con"
	else
		echo "Debe ser directorio"
	fi
;;
2)
	read -p "Archivo: " arc
	chmod 766 "$arc"
	cat "$arc" > "archivo_copiado"
	val=$(wc -l < "$arc")
	val=$((val - 5))
	lin=$(head -n "$val" "$arc")
	cat "$arc" > "$(basename $arc)-mod" 
	echo "$(cat archivo_copiado)"
	echo "$lin"
	path=$(basename "$arc")-mod
	echo "$(cat $path)"
;;
*)
	echo "incorrecto"
;;
esac