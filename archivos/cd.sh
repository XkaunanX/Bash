#!/bin/bash

# VARIABLE
opcion=""

while [ "$opcion" != "salir" ]; do
    clear
    echo "MENU PRINCIPAL:"
    echo "1. Ingresar Ruta Absoluta"
    echo "2. Ingresar Ruta Relativa"
    echo "3. Volver atrás"
    echo "0. Salir"

    echo "Ruta actual: $(pwd)"

    read -rp "Ingrese una opción: " opcion

    case $opcion in
        1)
            clear
            read -rp "Ruta Absoluta: " rutaAbsoluta
            if cd "$rutaAbsoluta" 2>/dev/null; then
                echo "Cambiado al directorio correctamente: $(pwd)"
            else
                echo "Error al cambiar al directorio '$rutaAbsoluta'."
            fi
            read -rsn 1 -p "Presione cualquier tecla para continuar..."
            ;;
        2)
            clear
            read -rp "Ruta del fichero: " rutaRelativa
            rutaActual=$(pwd)
            rutaRelativa="$rutaActual/$rutaRelativa"
            if cd "$rutaRelativa" 2>/dev/null; then
                echo "Cambiado al directorio correctamente: $(pwd)"
            else
                echo "Error al cambiar al directorio '$rutaRelativa'."
            fi
            read -rsn 1 -p "Presione cualquier tecla para continuar..."
            ;;
        3)
            clear
            if cd ..; then
                echo "Cambiado al directorio correctamente: $(pwd)"
            else
                echo "Error al cambiar al directorio padre."
            fi
            read -rsn 1 -p "Presione cualquier tecla para continuar..."
            ;;
        0)
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

exit
