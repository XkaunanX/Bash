#!/bin/bash

# VARIABLE
opcion=""

cd /

while [ "$opcion" != "salir" ]; do
    clear
    echo "MENU PRINCIPAL: ls <Modificador>"
    echo "1. Mostrar ocultos -a"
    echo "2. Mostrar detalles -l"
    echo "3. Mostrar en columnas -C"
    echo "4. Mostrar solo directorio -d"
    echo "5. ls <directorio>"
    echo "6. Imprimir el número de índice del archivo -i"
    echo "7. Imprimir el uid-gid -n"
    echo "8. Imprimir caracteres de control -q"
    echo "9. Imprimir recursivamente -R"
    echo "0. Salir"
    echo ""
    echo "Ruta Analizada: $(pwd)"
    echo ""

    read -rp "Ingrese una opcion: " opcion

    case $opcion in
        1)
            clear
            echo "ls -a:"
            ls -a
            echo ""
            read -rsn 1 -p "Presione cualquier tecla para continuar..."
            ;;
        2)
            clear
            echo "ls -l:"
            ls -l
            echo ""
            read -rsn 1 -p "Presione cualquier tecla para continuar..."
            ;;
        3)
            clear
            echo "ls -C:"
            ls -C
            echo ""
            read -rsn 1 -p "Presione cualquier tecla para continuar..."
            ;;
        4)
            clear
            echo "ls -d:"
            ls -d .
            echo ""
            read -rsn 1 -p "Presione cualquier tecla para continuar..."
            ;;
        5)
            clear
            read -rp "Ruta del directorio: " ruta
            if [ -d "$ruta" ]; then
                ls "$ruta"
            else
                echo "La ruta especificada no es un directorio válido."
            fi
            echo ""
            read -rsn 1 -p "Presione cualquier tecla para continuar..."
            ;;
        6)
            clear
            echo "ls -i:"
            ls -i
            echo ""
            read -rsn 1 -p "Presione cualquier tecla para continuar..."
            ;;
        7)
            clear
            echo "ls -n:"
            ls -n
            echo ""
            read -rsn 1 -p "Presione cualquier tecla para continuar..."
            ;;
        8)
            clear
            echo "ls -q:"
            ls -q
            echo ""
            read -rsn 1 -p "Presione cualquier tecla para continuar..."
            ;;
        9)
            clear
            echo "ls -R:"
            ls -R
            echo ""
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
