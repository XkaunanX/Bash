#!/bin/bash

# Definir el nombre del archivo de salida
archivo="conectados.txt"

# Guardar la lista de usuarios conectados en el archivo
who > "$archivo"

# Verificar si se pasó un parámetro
if [ $# -eq 1 ]; then
    usuario=$1
    # Filtrar y mostrar la hora de conexión del usuario especificado
    conexion=$(grep "^$usuario " "$archivo")
    if [ -n "$conexion" ]; then
        echo "Usuario: $usuario"
        echo "Hora de conexión: $(echo "$conexion" | awk '{print $4, $5}')"
    else
        echo "El usuario '$usuario' no está conectado."
    fi
else
    echo "Lista de usuarios conectados:"
    cat "$archivo"
fi
