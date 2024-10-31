#!/bin/bash

# VARIABLE
opcion=""

while true; do
    clear
    echo "MENU PARA MANIPULAR ARCHIVOS CON 'touch'"
    echo "1. Crear un archivo vacío"
    echo "2. Actualizar la marca de tiempo de un archivo existente"
    echo "3. Establecer una marca de tiempo específica"
    echo "4. Cambiar solo la marca de tiempo de acceso"
    echo "5. Cambiar solo la marca de tiempo de modificación"
    echo "0. Salir"
    echo ""

    read -rp "Ingrese una opción: " opcion

    case $opcion in
        1)
            clear
            read -rp "Ingrese el nombre del archivo a crear: " archivo
            touch "$archivo" && echo "Archivo '$archivo' creado." || echo "Error al crear '$archivo'."
            ;;
        2)
            clear
            read -rp "Ingrese el nombre del archivo a actualizar: " archivo
            touch "$archivo" && echo "Marca de tiempo de '$archivo' actualizada." || echo "Error al actualizar '$archivo'."
            ;;
        3)
            clear
            read -rp "Ingrese el nombre del archivo: " archivo
            read -rp "Ingrese la marca de tiempo (formato: [[CC]YY]MMDDhhmm[.SS]): " marca
            touch -t "$marca" "$archivo" && echo "Marca de tiempo de '$archivo' establecida a '$marca'." || echo "Error al establecer la marca de tiempo."
            ;;
        4)
            clear
            read -rp "Ingrese el nombre del archivo para cambiar la marca de tiempo de acceso: " archivo
            touch -a "$archivo" && echo "Marca de tiempo de acceso de '$archivo' cambiada." || echo "Error al cambiar la marca de tiempo."
            ;;
        5)
            clear
            read -rp "Ingrese el nombre del archivo para cambiar la marca de tiempo de modificación: " archivo
            touch -m "$archivo" && echo "Marca de tiempo de modificación de '$archivo' cambiada." || echo "Error al cambiar la marca de tiempo."
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
