#!/bin/bash

#Hacer un script que visualice un menú de dos opciones:
#**La primera llamada "Directorio" debe pedir un directorio por consola y
#  devolver (en caso de que exista) el tamaño del archivo que más tamaño
#  ocupa. También se debe contabilizar la cantidad de archivos que terminen
#  en .txt
#**La segunda llamada "Archivo" debe pedir un archivo por consola y realizar
#  las siguientes tareas:
#--->Informar si el archivo es ejecutable.
#--->Informar cuantas líneas tiene.
#--->Borras las últimas 5 líneas del archivo y guardar la salida en un archivo
#    llamado igual que el original con el agregado al final del nombre "-mod".


echo "1) Directorio"
echo "2) Archivo"

read -p "Ingrese una opcion" k


tam=0
con=0

case $k in
1)
	read -p "<Directorio>: " dir
	if [ -d "$dir" ];then
		for item in "$dir"/*;do
			if [ -f "$item" ]; then
				aux=$(stat -c %s "$item")
				echo "$aux"
				if [ $aux -gt $tam ];then
					tam=$aux
				fi
			fi
		done
		for item in "$dir"/*.txt;do
			con=$((con + 1))
		done
	fi
	echo "cantidad de txt: $con"
	echo "el mas pesado: $tam"
;;
2)
	ls
	read -p "<Archivo>: " arc
	if [ -x "$arc" ]; then
		echo "Es ejecutable"
		num=$(wc -l < "$arc")
		echo "tiene: $num lineas"
		num=$((num - 5))
		head -n "$num" "$arc" > "$arc.tmp"
		echo "Contenido modificado: "
		cat "$arc.tmp"
		mv "$arc.tmp" "$arc"
	fi
;;
*)
	echo "opcion incorrecta"
;;
esac