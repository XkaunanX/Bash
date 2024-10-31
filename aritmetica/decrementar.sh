#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Uso: $0 <contador>"
    exit 1
fi

contador=$1

if ! [[ "$contador" =~ ^-?[0-9]+$ ]]; then
    echo "Por favor, introduce un número entero válido."
    exit 1
fi

((contador--))
echo "El nuevo valor del contador es: $contador"