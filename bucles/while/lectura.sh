#!/bin/bash

if [ $# -eq 0 ]
then
    echo "No se proporcionaron parametros"
    echo "Uso: $0 <Fichero>"
fi

if [ ! -f "$1" ]
then
    echo "El parametro $1 no es un fichero valido"
    exit
fi

while IFS= read -r linea
do
    echo "Linea leida: $linea"
done <"$1"