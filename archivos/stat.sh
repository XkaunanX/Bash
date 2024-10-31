#!/bin/bash

# VARIABLE
opcion=""

while true; do
    clear
    echo "MENU PARA DETALLAR UN ARCHIVO"
    echo "1. Mostrar información detallada de un archivo"
    echo "2. Mostrar información en un formato específico"
    echo "3. Mostrar información en formato detallado"
    echo "4. Mostrar números de serie de archivo"
    echo "0. Salir"
    echo ""

    read -rp "Ingrese una opción: " opcion

    case $opcion in
        1)
            clear
            read -rp "Ingrese el nombre del archivo: " archivo
            echo "Información detallada de '$archivo':"
            stat "$archivo" || echo "Error: No se pudo acceder a '$archivo'."
            ;;
        2)
            clear
            read -rp "Ingrese el nombre del archivo: " archivo
            echo "Información en formato específico de '$archivo':"
            stat -c '%n %s bytes %y' "$archivo" || echo "Error: No se pudo acceder a '$archivo'."
            ;;
        3)
            clear
            read -rp "Ingrese el nombre del archivo: " archivo
            echo "Información en formato detallado de '$archivo':"
            stat -x "$archivo" || echo "Error: No se pudo acceder a '$archivo'."
            ;;
        4)
            clear
            read -rp "Ingrese el nombre del archivo: " archivo
            echo "Números de serie de archivo para '$archivo':"
            stat -f "$archivo" || echo "Error: No se pudo acceder a '$archivo'."
            ;;
        0)
            clear
            echo "Saliendo del programa..."
            exit
            ;;
        *)
            clear
            echo "Opción inválida. Por favor, ingrese nuevamente una opción."
            ;;
    esac

    read -rsn 1 -p "Presione cualquier tecla para continuar..."
done

exit
