#!/bin/bash

# Verificar que se haya pasado un argumento
if [ $# -ne 1 ]; then
    echo "Uso: $0 <opcion>"
    echo "Opciones válidas: A, B, C"
    exit 1
fi

opcion=$1

# Validar que la opción sea válida
if [[ "$opcion" != "A" && "$opcion" != "B" && "$opcion" != "C" && "$opcion" != "c" ]]; then
    echo "Opción no reconocida. Opciones válidas: A, B, C"
    exit 1
fi

# Uso de elif para manejar las opciones
if [ "$opcion" = "A" ]; then
    echo "Seleccionaste la opción A"
elif [ "$opcion" = "B" ]; then
    echo "Seleccionaste la opción B"
elif [ "$opcion" = "C" ] || [ "$opcion" = "c" ]; then
    echo "Seleccionaste la opción C"
fi