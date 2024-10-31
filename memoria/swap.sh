#!/bin/bash

if [ $# -eq 0 ]
then
    echo "No se proporcionaron parametros"
    echo "Uso: $0 <Y/N>"
fi

if [ -z "$1" ];
then
    echo "Parametros de: $1 <Y/N>"
    exit
fi

if [ "$#" -ne 1 ]
then
    echo "Uso: $0 <Y/N>"
    exit
fi

if [ "$1" = "Y" ]; then
    echo "Activando swap..."
    sudo swapon -a
elif [ "$1" = "N" ]; then
    echo "Desactivando swap..."
    sudo swapoff -a
else
    echo "Valor no válido. Usa 'Y' para activar o 'N' para desactivar."
    exit 1
fi