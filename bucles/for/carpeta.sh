#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Uso: $0 <ruta>"
    exit 1
fi

CARPETA=$1

cd "$CARPETA" || { echo "No se pudo acceder a la carpeta: $CARPETA"; exit 1; }

if ls *.* 1> /dev/null 2>&1; then
    for archivo in *.*; do
        echo "Procesando archivo: $archivo"
    done
else
    echo "No se encontraron archivos en la carpeta."
fi