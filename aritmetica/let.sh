#!/bin/bash

es_numero() {
    [[ "$1" =~ ^-?[0-9]+$ ]]
}

read -p "Introduce un número: " a
read -p "Introduce otro número: " b

if ! es_numero "$a"; then
    echo "Error: '$a' no es un número válido."
    exit 1
fi

if ! es_numero "$b"; then
    echo "Error: '$b' no es un número válido."
    exit 1
fi

if (( a < b )); then
    echo "$a es menor que $b"
elif (( a > b )); then
    echo "$a es mayor que $b"
else
    echo "$a es igual a $b"
fi