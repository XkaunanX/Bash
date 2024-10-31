#!/bin/bash

#VARIABLE
opcion=""

while [ "$opcion" != "salir" ]
do
    clear
    echo "MENU PRINCIPAL: sed <'EXPRESION'> <Entrada>"
    echo ""
    echo "1. Reemplazar secuencia por otra una unica vez"
    echo "2. Reemplazar secuencia por otra en todas las ocurrecias"
    echo "3. Eliminar lineas que contiene una secuencia"
    echo "4. Insertar texto al inicio"
    echo "5. Insertar texto al final"
    echo "6. Eliminar lineas en blanco"
    echo "0. Salir"
    echo ""
    echo "Ruta Actual: $(pwd)"
    echo ""

    read -rp "Ingrese una opcion: " opcion

    case $opcion in
        1)
        clear
        echo ""
        read -rp "Ingrese la ruta del archivo " ruta
        read -rp "Ingrese la secuencia a reemplazar " actual
        read -rp "Ingrese el reemplazo " nueva
        sed "s/$actual/$nueva/" "$ruta"
        echo ""
        read -rsn 1 -p "Presione cualquier tecla para continuar..."
        ;;
        2)
        clear
        echo ""
        read -rp "Ingrese la ruta del archivo " ruta
        read -rp "Ingrese la secuencia a reemplazar " actual
        read -rp "Ingrese el reemplazo " nueva
        sed "s/$actual/$nueva/g" "$ruta"
        echo ""
        read -rsn 1 -p "Presione cualquier tecla para continuar..."
        ;;
        3)
        clear
        echo ""
        read -rp "Ingrese la ruta del archivo " ruta
        read -rp "Ingrese la secuencia a eliminar " secuencia
        sed "/$secuencia/d" "$ruta"
        echo ""
        read -rsn 1 -p "Presione cualquier tecla para continuar..."
        ;;
        4)
        clear
        echo ""
        read -rp "Ingrese la ruta del archivo " ruta
        read -rp "Ingrese la secuencia que se insertara al inicio " secuencia
        sed "s/^/$secuencia/ " "$ruta"
        echo ""
        read -rsn 1 -p "Presione cualquier tecla para continuar..."
        ;;
        5)
        clear
        echo ""
        read -rp "Ingrese la ruta del archivo " ruta
        read -rp "Ingrese la secuencia que se insertara al final " secuencia
        sed "s/$/ - $secuencia/ " "$ruta"
        echo ""
        read -rsn 1 -p "Presione cualquier tecla para continuar..."
        ;;
        6)
        clear
        echo ""
        read -rp "Ingrese la ruta del archivo donde se eliminaran las lineas en blanco" ruta
        sed "/^$/d" "$ruta"
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