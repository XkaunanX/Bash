#!/bin/bash

if [ -z "$1" ];
then
    echo "Parametros de: $1 <Entero>"
    exit
fi

for i in $(seq 1 10); do
    echo "iteracion"
    sleep 1
    if [ "$i" -eq "$1" ];
    then
        echo "KILL >:)"
        # pgrep busca y muestra los identificadores de procesos (PIDs) que coinciden con un nombre de proceso o con un criterio específico.
        kill $(pgrep -u $USER "$0")
    fi
done