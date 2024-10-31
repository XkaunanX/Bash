#!/bin/bash

# VARIABLE
opcion=""

while true; do
    clear
    echo "MENU PARA ELIMINAR ARCHIVOS Y DIRECTORIOS"
    echo "1. Eliminar un archivo"
    echo "2. Eliminar varios archivos"
    echo "3. Eliminar directorio de forma recursiva"
    echo "4. Eliminar archivo sin preguntar"
    echo "5. Pedir confirmación antes de eliminar"
    echo "6. Eliminar directorios vacíos"
    echo "7. Eliminar mostrando detalles"
    echo "0. Salir"
    echo ""

    read -rp "Ingrese una opción: " opcion

    case $opcion in
        1)
            clear
            read -rp "Ingrese el nombre del archivo a eliminar: " archivo
            rm "$archivo" && echo "Archivo '$archivo' eliminado." || echo "Error al eliminar '$archivo'."
            ;;
        2)
            clear
            read -rp "Ingrese los nombres de los archivos a eliminar (separados por espacio): " archivos
            rm $archivos && echo "Archivos '$archivos' eliminados." || echo "Error al eliminar algunos archivos."
            ;;
        3)
            clear
            read -rp "Ingrese el nombre del directorio a eliminar: " directorio
            rm -R "$directorio" && echo "Directorio '$directorio' eliminado recursivamente." || echo "Error al eliminar '$directorio'."
            ;;
        4)
            clear
            read -rp "Ingrese el nombre del archivo a eliminar sin preguntar: " archivoF
            rm -f "$archivoF" && echo "Archivo '$archivoF' eliminado sin preguntar." || echo "Error al eliminar '$archivoF'."
            ;;
        5)
            clear
            read -rp "Ingrese el nombre del archivo a eliminar con confirmación: " archivoC
            rm -i "$archivoC"
            ;;
        6)
            clear
            read -rp "Ingrese el nombre del directorio vacío a eliminar: " dirVacio
            rm -d "$dirVacio" && echo "Directorio '$dirVacio' eliminado." || echo "Error al eliminar '$dirVacio'."
            ;;
        7)
            clear
            read -rp "Ingrese el nombre del archivo a eliminar mostrando detalles: " archivoD
            rm -v "$archivoD" && echo "Archivo '$archivoD' eliminado mostrando detalles." || echo "Error al eliminar '$archivoD'."
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
