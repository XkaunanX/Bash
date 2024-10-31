#!/bin/bash

#Realizar un script que reciba un directorio por parametro y lo recorra haciendo
#lo siguiente: A los archivos que tengan mas de 20 lineas, enviarlos a un
#directorio llamado "archivos_extensos", luego comprimir y empaquetar dicho
#directorio, informar cuantos archivos se encontraron con mas de 20 lineas, cual
#es su tamaño sumado total, y el porcentaje de archivos que era con respecto a 
#la cantidad de archivos que existen en el directorio pasado por parametro.

if [ ! -d "$1" ];
then
	echo "Debe ser parametro"
	exit
fi

# Verificar si se ha proporcionado un directorio como parámetro
if [ ! -d "$1" ]; then
    echo "Uso: $0 <directorio>"
    exit 1
fi

# Crear directorio "archivos_extensos" si no existe
mkdir -p "archivos_extensos"

con1=0
con2=0
tam=0

# Iterar sobre los archivos en el directorio proporcionado
for item in "$1"/*; do
    if [ -f "$item" ]; then
        # Contar archivos con más de 20 líneas
        if [ $(wc -l < "$item") -gt 20 ]; then
            echo "$(basename "$item")"
            con1=$((con1 + 1))
            
            # Obtener tamaño del archivo y sumar al tamaño total
            aux=$(stat -c %s "$item")
            tam=$((tam + aux))
            
            # Copiar archivo a "archivos_extensos"
            cp -f "$item" "archivos_extensos"
        fi
        con2=$((con2 + 1))
    fi
done

# Mostrar resultados
echo "Archivos con más de 20 líneas encontrados: $con1"
echo "Cantidad total de archivos en el directorio: $con2"
echo "Tamaño total de archivos encontrados: $tam bytes"

# Calcular y mostrar el porcentaje
if [ "$con2" -gt 0 ]; then
    por=$((con1 * 100 / con2))
    echo "Porcentaje de archivos con más de 20 líneas respecto al total: $por%"
else
    echo "No se encontraron archivos en el directorio original."
fi

# Empaquetar y comprimir directorio "archivos_extensos"
tar -czvf "archivos_extensos.tar.gz" "archivos_extensos"
