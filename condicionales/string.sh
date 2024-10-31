#!/bin/bash

# Verificar que se hayan pasado dos argumentos
if [ $# -ne 2 ]; then
    echo "Uso: $0 <cadena1> <cadena2>"
    exit 1
fi

cadena1=$1
cadena2=$2

# Comparar las cadenas
if [ "$cadena1" = "$cadena2" ]; then
    echo "Las cadenas son iguales ($cadena1 = $cadena2)"
else
    echo "Las cadenas son distintas ($cadena1 != $cadena2)"
fi