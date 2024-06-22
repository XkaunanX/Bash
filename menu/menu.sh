#!/bin/bash

#VARIABLE
opcion=""

#FUNCIONES
validarDirectorio(){
    local directorio="$1"          #Variable local
    if [ ! -d "$directorio" ]
    then
        echo "$directorio No es un directorio valido"
        exit
    fi
}

validarFichero(){
    local archivo="$1"
    if [ ! -f "$archivo" ]
    then
        echo "$archivo No es un fichero valido"
        exit
    fi
}

#MENU
while [ "$opcion" != "salir" ]
do
    clear
    echo "MENU PRINCIPAL:"
    echo "1. Ver lista de archivos:"
    echo "2. Imprimir contenido de un archivo"
    echo "3. Salir"

    read -rp "Ingrese una opcion: " opcion

    case $opcion in
        1)
        clear
        read -rp "Ruta del directorio: " directorio
        validarDirectorio "$directorio"
        echo "Archivos en la ruta actual $(ls $directorio)"
        read -rsn 1 -p "Presione cualquier tecla para continuar..."
        ;;
        2)
        clear
        read -rp "Ruta del fichero: " fichero
        validarFichero "$fichero"
        echo "$(cat < $fichero)"
        read -rsn 1 -p "Presione cualquier tecla para continuar..."
        ;;
        3)
        clear
        echo "Saliendo del programa"
        opcion="salir"
        read -rsn 1 -p "Presione cualquier tecla para continuar..."
        ;;
        *)
        echo "Opcion invalida. Por favor, ingrese nuevamente una opcion"
        read -rsn 1 -p "Presione cualquier tecla para continuar..."
        ;;
    esac

done