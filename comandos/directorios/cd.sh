#!/bin/bash

#VARIABLE
opcion=""

while [ "$opcion" != "salir" ]
do
    clear
    echo "MENU PRINCIPAL:"
    echo "1. Ingresar Ruta Absoluta"
    echo "2. Ingresar Ruta Relativa"
    echo "3. Volver atras"
    echo "0. Salir"

    echo "Ruta actual: $(pwd)"

    read -rp "Ingrese una opcion: " opcion

    case $opcion in
        1)
        clear
        read -rp "Ruta Absoluta: " rutaAbosoluta
        cd "$rutaAbosoluta"
        #VERIFICAR SI SE CAMBIO DE RUTA
        if [ $? -eq 0 ]
        then
            echo "Cambiado al directorio correctamente: $(pwd)"
        else
            echo "Error al cambiar al directorio '$rutaAbosoluta'."
        fi
        read -rsn 1 -p "Presione cualquier tecla para continuar..."
        ;;
        2)
        clear
        read -rp "Ruta del fichero: " rutaRelativa
        rutaActual=$(pwd)
        rutaRelativa="$rutaActual/$rutaRelativa"
        cd "$rutaRelativa"
        #VERIFICAR SI SE CAMBIO DE RUTA
        if [ $? -eq 0 ]
        then
            echo "Cambiado al directorio correctamente: $(pwd)"
        else
            echo "Error al cambiar al directorio '$rutaRelativa'."
        fi
        read -rsn 1 -p "Presione cualquier tecla para continuar..."
        ;;
        3)
        clear
        cd ..
        if [ $? -eq 0 ]
        then
            echo "Cambiado al directorio correctamente: $(pwd)"
        else
            echo "Error al cambiar al directorio '$rutaAbosoluta'."
        fi
        ;;
        0)
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

exit