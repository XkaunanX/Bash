#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Uso: $0 <filtro>"
    echo "Filtros disponibles: emerg, alert, crit, err, warn, notice, info, debug"
    exit 1
fi

# Asignar el parámetro a una variable
filtro=$1

# Verificar si el filtro es válido
case $filtro in
    emerg|alert|crit|err|warn|notice|info|debug)
        ;;
    *)
        echo "Filtro no válido. Use uno de los siguientes: emerg, alert, crit, err, warn, notice, info, debug"
        exit 1
        ;;
esac

sudo dmesg | grep -i "$filtro"