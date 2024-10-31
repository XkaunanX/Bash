#!/bin/bash

# Verificar que se pasó un nombre de usuario como parámetro
if [ $# -ne 1 ]; then
    echo "Uso: $0 <nombre_de_usuario>"
    exit 1
fi

usuario=$1

# Verificar si el usuario se ha conectado en el último mes
conexion=$(last "$usuario" | grep -E -o '^[^ ]+' | head -n 1)

if [ -n "$conexion" ]; then
    echo "El usuario '$usuario' se ha conectado al servidor."
    echo "Última conexión: $(last "$usuario" | head -n 1)"
else
    echo "El usuario '$usuario' no se ha conectado en el último mes."
fi
