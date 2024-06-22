#!/bin/bash

#VARIABLE
opcion=""

while [ "$opcion" != "salir" ]
do
    clear
    echo "MENU PRINCIPAL: awk <modificador*> <'EXPRESION'>"
    echo ""
    echo "1. Utilizar awk con delimitador por defecto"
    echo "2. Utilizar awk con delimitador definido por el usuario"
    echo "3. Utilizar awk con la redireccion de grep"
    echo "0. Salir"
    echo ""
    echo "Ruta Actual: $(pwd)"
    echo ""

    read -rp "Ingrese una opcion: " opcion

    case $opcion in
        1)
        clear
        echo ""
        read -rp "Ingrese la ruta del fichero " ruta
        read -rp "Ingrese la columna que desea filtrar " columna
        echo ""
        awk -v col="$columna" '{print $col}' "$ruta"    #HAY DIFERENCIA ENTRE PRINT(con salto de linea) Y PRINTF(Sin salto de linea)
        echo ""
        read -rsn 1 -p "Presione cualquier tecla para continuar..."
        ;;
        2)
        clear
        echo ""
        read -rp "Ingrese el delimitador de columna " delimitador
        read -rp "Ingrese la ruta del fichero " ruta
        read -rp "Ingrese la columna que desea filtrar " columna
        echo ""
        awk -v col="$columna" -F "$delimitador" '{print $col}' "$ruta"
        echo ""
        read -rsn 1 -p "Presione cualquier tecla para continuar..."
        ;;
        3)
        clear
        echo ""
        read -rp "Ingrese el patron a reconocer " patron
        read -rp "Ingrese la ruta del fichero " ruta
        read -rp "Ingrese la columna que desea filtrar " columna
        echo ""
        grep "$patron" "$ruta" | awk -v col="$columna" '{print $col}'
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