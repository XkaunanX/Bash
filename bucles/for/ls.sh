#!/bin/bash

# Verificar que se haya pasado un argumento
if [ $# -ne 1 ]; then
    echo "Uso: $0 <ruta>"
    exit 1
fi

RUTA=$1

# Verificar que la ruta existe y es un directorio
if [ ! -d "$RUTA" ]; then
    echo "La ruta especificada no es un directorio válido: $RUTA"
    exit 1
fi

# Iterar sobre los archivos en la ruta especificada usando ls
for archivo in $(ls "$RUTA"/*.* 2>/dev/null); do
    echo "Archivo encontrado: $archivo"
done

# Mensaje si no se encontraron archivos
if [ $? -ne 0 ]; then
    echo "No se encontraron archivos en la ruta especificada."
fi