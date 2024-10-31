#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Uso: $0 <nombre_archivo>"
    exit 1
fi

archivo=$1

if [ -f "$archivo" ]; then
    echo "El archivo $archivo existe"
else
    echo "El archivo $archivo no existe o no es regular"
fi
