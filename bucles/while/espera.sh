#!/bin/bash

if [ $# -eq 0 ]; then
    echo "No se proporcionaron parámetros."
    echo "Uso: $0 <Fichero>"
    exit 1
fi

if [ ! -f "$1" ]; then
    echo "El parámetro $1 no es un fichero válido."
    exit 1
fi

while [ ! -f "$1" ]; do
    echo "Esperando a que el archivo $1 esté disponible..."
    sleep 1
done

echo "El archivo $1 ahora está disponible."