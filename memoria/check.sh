#!/bin/bash

if [ -z "$1" ]; then
    echo "Uso: $0 <valor en MB>"
    exit 1
fi

while true; do


    #awk '/^Mem:/{print $4} aquellos que comienzan con Mem imprimo la columna 4
    libre=$(free -m | awk '/^Mem:/{print $4}')

    if [ $libre -lt $1 ];
    then
        echo "Warning: Superado el umbral de memoria ocupada"
    fi

    sleep 5

done