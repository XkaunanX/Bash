#!/bin/bash

# VARIABLE
opcion=""

while true; do
    clear
    echo "MENU PARA CREAR DIRECTORIOS"
    echo "1. Crear un directorio simple"
    echo "2. Crear directorios intermedios si no existen"
    echo "3. Crear un directorio especificando sus permisos"
    echo "4. Crear un directorio temporal"
    echo "5. Crear un directorio con pregunta para sobrescribir"
    echo "6. Crear un directorio que avise si ya existe"
    echo "0. Salir"
    echo ""

    read -rp "Ingrese una opción: " opcion

    case $opcion in
        1)
            clear
            read -rp "Ingrese el nombre del directorio: " dirSimple
            mkdir "$dirSimple" && echo "Directorio '$dirSimple' creado." || echo "Error al crear el directorio."
            ;;
        2)
            clear
            read -rp "Ingrese la ruta del directorio con subdirectorios: " dirIntermedios
            mkdir -p "$dirIntermedios" && echo "Directorios intermedios '$dirIntermedios' creados." || echo "Error al crear los directorios."
            ;;
        3)
            clear
            read -rp "Ingrese el nombre del directorio: " dirConPermisos
            read -rp "Ingrese los permisos (ej. 755): " permisos
            mkdir -m "$permisos" "$dirConPermisos" && echo "Directorio '$dirConPermisos' creado con permisos $permisos." || echo "Error al crear el directorio."
            ;;
        4)
            clear
            mkdir -p /tmp/directorioTemporal && echo "Directorio temporal '/tmp/directorioTemporal' creado." || echo "Error al crear el directorio temporal."
            ;;
        5)
            clear
            read -rp "Ingrese el nombre del directorio: " dirConPregunta
            mkdir -i "$dirConPregunta"
            ;;
        6)
            clear
            read -rp "Ingrese la ruta del directorio: " dirExistente
            if mkdir -p "$dirExistente"; then
                echo "Directorio '$dirExistente' creado."
            else
                echo "El directorio '$dirExistente' ya existe."
            fi
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