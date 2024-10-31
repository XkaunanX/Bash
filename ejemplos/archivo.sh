#!/bin/bash

# VARIABLES
opcion=""

# FUNCIONES
validarDirectorio() {
    local directorio="$1"  # Variable local
    if [ ! -d "$directorio" ]; then
        echo "$directorio no es un directorio válido"
        exit 1
    fi
}

validarFichero() {
    local archivo="$1"
    if [ ! -f "$archivo" ]; then
        echo "$archivo no es un fichero válido"
        exit 1
    fi
}

# MENU
while [ "$opcion" != "salir" ]; do
    clear
    echo "MENU PRINCIPAL:"
    echo "1. Ver lista de archivos"
    echo "2. Imprimir contenido de un archivo"
    echo "3. Salir"

    read -rp "Ingrese una opcion: " opcion

    case $opcion in
        1)
            clear
            read -rp "Ruta del directorio: " directorio
            validarDirectorio "$directorio"
            echo "Archivos en la ruta: $(ls "$directorio")"
            read -rsn 1 -p "Presione cualquier tecla para continuar..."
            ;;
        2)
            clear
            read -rp "Ruta del fichero: " fichero
            validarFichero "$fichero"
            echo "Contenido de $fichero:"
            cat "$fichero"
            read -rsn 1 -p "Presione cualquier tecla para continuar..."
            ;;
        3)
            clear
            echo "Saliendo del programa..."
            opcion="salir"
            read -rsn 1 -p "Presione cualquier tecla para continuar..."
            ;;
        *)
            echo "Opción inválida. Por favor, ingrese nuevamente una opción."
            read -rsn 1 -p "Presione cualquier tecla para continuar..."
            ;;
    esac

done
