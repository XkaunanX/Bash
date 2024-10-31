#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Uso: $0 <inicio> <fin>"
    exit 1
fi

INICIO=$1
FIN=$2

if ! [[ "$INICIO" =~ ^[0-9]+$ ]] || ! [[ "$FIN" =~ ^[0-9]+$ ]]; then
    echo "Ambos argumentos deben ser números."
    exit 1
fi

if [ "$INICIO" -gt "$FIN" ]; then
    echo "El número de inicio debe ser menor o igual que el de fin."
    exit 1
fi

for numero in $(seq "$INICIO" "$FIN"); do
    echo "Número: $numero"
done