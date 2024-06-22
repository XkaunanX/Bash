#!/bin/bash

#VARIABLE
contador=1
archivo=""
opcion=""

#EJEMPLO CONTADOR
while [ $contador -le 5 ]
do
    echo "Numero: $contador"
    contador=$((contador + 1))
done

echo "Fin Contador"

echo "Ingrese un archivo: "
read -r archivo

#EJEMPLO LECTURAS DE LINEAS DE UN ARCHIVO
while IFS= read -r linea
do

    echo "Linea leida: $linea"

done <"$archivo"

echo "Archivo disponible"

sleep 3

#EJEMPLO DE MENU
while [ "$opcion" != "salir" ]
do
clear
    echo "MENU PRINCIPAL:"
    echo "1. Ver lista de archivos:"
    echo "2. Realizar una accion:"
    echo "3. Salir"

    read -pr "Ingrese su opcion: " opcion

    case $opcion in
        1)
        clear
        ls
        read -r -s -n 1 -p "Presione cualquier tecla para continuar..."
        ;;
        2)
        clear
        echo "Realizando accion..."
        read -r -s -n 1 -p "Presione cualquier tecla para continuar..."
        ;;
        3)
        clear
        echo "Saliendo del programa"
        opcion="salir"
        read -r -s -n 1 -p "Presione cualquier tecla para continuar..."
        ;;
        *)
        echo "Opcion invalida. Por favor, ingrese nuevamente"
        read -rsn 1 -p "Presione cualquier tecla para continuar..."
        ;;
    esac

done

#EJEMPLO ULTIMA LINEA
while read -r linea
do
    echo "Línea leída: $linea"
done

#EJEMPLO ESPERA HASTA QUE UN ARCHIVO ESTE DISPONIBLE
while [ ! -f "$archivo" ]
do

    echo "Esperando a que el archivo $archivo este disponible..."
    sleep 1

done


#CONTEXTO

# IFS (Internal Field Separator): Variable especial que determina como se separan e interpretan los campos en una linea de texto cuando se utlizan en combinacion con comandos como read 