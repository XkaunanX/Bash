#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Uso: $0 <nombre_directorio>"
    exit 1
fi

directorio=$1

if [ -d "$directorio" ]; then
    echo "El directorio $directorio existe"
else
    echo "El directorio $directorio no existe"
fi