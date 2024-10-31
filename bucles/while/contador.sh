#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Uso: $0 <contador>"
    exit
fi

contador=$1

if ! [[ "$contador" =~ ^-?[0-9]+$ ]]; then
    echo "Por favor, introduce un número entero válido."
    exit
fi

while [ $contador -le 5 ]
do
    echo "Numero: $contador"
    contador=$((contador++))
done