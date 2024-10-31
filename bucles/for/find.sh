#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Uso: $0 <ruta_inicial>"
    exit 1
fi

RUTA_INICIAL=$1

if [ ! -d "$RUTA_INICIAL" ]; then
    echo "La ruta especificada no es un directorio válido: $RUTA_INICIAL"
    exit 1
fi

for archivo in $(find "$RUTA_INICIAL" -name "*.*"); do
    echo "Archivo encontrado: $archivo"
done