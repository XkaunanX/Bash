#!/bin/bash

# Definir el nombre del archivo de salida
archivo="info_sistema.txt"

# Obtener la información y guardarla en el archivo
{
    echo "Arquitectura del procesador: $(uname -m)"
    echo "Nombre de la máquina: $(uname -n)"
    echo "Sistema operativo: $(uname -o)"
    echo "Versión del kernel: $(uname -r)"
} > "$archivo"

# Confirmar que el archivo ha sido creado
echo "La información del sistema se ha guardado en $archivo."
