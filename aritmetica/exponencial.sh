#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Uso: $0 <numero1> <numero2>"
    exit 1
fi

a=$1
b=$2

if [[ "$a" =~ ^-?[0-9]+(\.[0-9]+)?$ ]] && [[ "$b" =~ ^-?[0-9]+(\.[0-9]+)?$ ]]; then
    echo "$a y $b son números válidos (enteros o flotantes)."
else
    echo "Uno o ambos valores NO son números válidos."
    exit
fi

exponencial=$((a**b))
echo "El exponencial de base: $a y Exponente: $b es $exponencial"