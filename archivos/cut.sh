#!/bin/bash

#VARIABLE
opcion=""

while [ "$opcion" != "salir" ]
do
    clear
    echo "MENU PRINCIPAL: cut <modificador*> <Entrada>"
    echo ""
    echo "1. Extraccion de campos pertenecientes a cada linea, delimitados por un caracter especifico, desde un archivo -d junto a -f"
    echo "2. Extraccion de un rango de cada linea, determinado por un rango de bytes como indicador, en un archivo -b"
    echo "3. Extraccion de un rango de cada linea, determinado por un rango numerico como indicador, en un archivo -c"
    echo "4. Extraccion de varios rangos con -c"
    echo "0. Salir"
    echo ""
    echo "Ruta Actual: $(pwd)"
    echo ""

    read -rp "Ingrese una opcion: " opcion

    case $opcion in
        1)
        clear
        echo ""
        echo "ACLARACION: Devolvera los campos seleccionados por cada lineas independiente de texto"
        echo ""
        read -rp "Ingrese el delimitador " delimitador
        read -rp "Ingrese que campos quiere obtener con el siguiente formato 1,4,8,...etc " campos
        read -rp "Ingrese el fichero " fichero
        cut -d "$delimitador" -f "$campos" "$fichero"
        echo ""
        read -rsn 1 -p "Presione cualquier tecla para continuar..."
        ;;
        2)
        clear
        echo ""
        echo "ACLARACION: Devolvera el rango de los bytes dados por cada linea de texto"
        echo ""
        read -rp "Ingrese el numero de bytes con el siguiente formato m-n " bytes
        read -rp "Ingrese el fichero " fichero
        cut -b "$bytes" "$fichero"
        echo ""
        read -rsn 1 -p "Presione cualquier tecla para continuar..."
        ;;
        3)
        clear
        echo ""
        echo "ACLARACION: Devolvera el rango de caracteres dados por cada linea de texto"
        echo ""
        read -rp "Ingrese el rango de caracteres con el siguiente formato m-n " rango
        read -rp "Ingrese el fichero " fichero
        cut -c "$rango" "$fichero"
        echo ""
        read -rsn 1 -p "Presione cualquier tecla para continuar..."
        ;;
        4)
        clear
        echo ""
        echo "ACLARACION: Devolvera el rango de caracteres dados por cada linea de texto"
        echo ""
        read -rp "Ingrese el rango de caracteres con el siguiente formato m-n,x-y " rango
        read -rp "Ingrese el fichero " fichero
        cut -c "$rango" "$fichero"
        echo ""
        read -rsn 1 -p "Presione cualquier tecla para continuar..."
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

echo ""

exit