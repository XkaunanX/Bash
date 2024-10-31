#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Uso: $0 <edad>"
    exit 1
fi

edad=$1

if ! [[ "$edad" =~ ^[0-9]+$ ]]; then
    echo "La edad debe ser un número entero positivo."
    exit 1
fi

if [ "$edad" -ge 18 ]; then
    echo "Eres mayor de edad."
else
    echo "Eres menor de edad."
fi