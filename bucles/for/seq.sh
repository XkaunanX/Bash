#!/bin/bash

if [ $# -ne 3 ]; then
    echo "Uso: $0 <inicio> <incremento> <fin>"
    exit 1
fi

INICIO=$1
INCREMENTO=$2
FIN=$3

if ! [[ "$INICIO" =~ ^[0-9]+$ ]] || ! [[ "$INCREMENTO" =~ ^[0-9]+$ ]] || ! [[ "$FIN" =~ ^[0-9]+$ ]]; then
    echo "Todos los argumentos deben ser números."
    exit 1
fi

for i in $(seq "$INICIO" "$INCREMENTO" "$FIN"); do
    echo "Número seq: $i"
done