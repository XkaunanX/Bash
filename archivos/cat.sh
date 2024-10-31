#!/bin/bash

#VARIABLE
opcion=""

while [ "$opcion" != "salir" ]
do
    clear
    echo "MENU PRINCIPAL: cat <modificador*> <NombreFichero>"
    echo ""
    echo "1. Mostrar contenido de un fichero"
    echo "2. Mostrar contenido de un fichero y Redirigir salida a archivo"
    echo "3. Concatenar archivos y mostrar contenido concatenado"
    echo "4. Concatenar archivos y Redirigir salida a archivo"
    echo "5. Mostrar contenido de un fichero junto a los numeros de linea -n"
    echo "6. Mostrar contenido de un fichero junto a los numeros de linea no vacios -b"
    echo "7. Mostrar contenido de un fichero junto a las tabulaciones -T"
    echo "8. Mostrar contenido de un fichero junto a los finales de linea -E"
    echo "9. Combinar varios archivos en uno -s"
    echo "0. Combinar varios archivos en uno -s"
    echo ""
    echo "Ruta Actual: $(pwd)"
    echo ""

    read -rp "Ingrese una opcion: " opcion

    case $opcion in
        1)
        clear
        read -rp "Ingrese ruta del fichero sea relativa o absoluta: " ruta
        cat "$ruta"
        echo ""
        read -rsn 1 -p "Presione cualquier tecla para continuar..."
        ;;
        2)
        clear
        read -rp "Ingrese ruta del fichero sea relativa o absoulta: " ruta
        read -rp "Ingrese el nombre del nuevo archivo.txt: " nombre
        cat "$ruta" > "$nombre".txt
        echo ""
        read -rsn 1 -p "Presione cualquier tecla para continuar..."
        ;;
        3)
        clear
        read -rp "Ingrese ruta del primer fichero: " ruta1
        read -rp "Ingrese ruta del segundo fichero: " ruta2
        cat "$ruta1" "$ruta2"
        echo ""
        read -rsn 1 -p "Presione cualquier tecla para continuar..."
        ;;
        4)
        clear
        read -rp "Ingrese ruta del primer fichero: " ruta1
        read -rp "Ingrese ruta del segundo fichero: " ruta2
        read -rp "Ingrese el nombre del nuevo archivo.txt: " nombre
        cat "$ruta1" "$ruta2" > "$nombre".txt
        echo ""
        read -rsn 1 -p "Presione cualquier tecla para continuar..."
        ;;
        5)
        clear
        clear
        read -rp "Ingrese ruta del fichero sea relativa o absoluta: " ruta
        cat -n "$ruta"
        echo ""
        read -rsn 1 -p "Presione cualquier tecla para continuar..."
        ;;
        6)
        clear
        read -rp "Ingrese ruta del fichero sea relativa o absoluta: " ruta
        cat -b "$ruta"
        echo ""
        read -rsn 1 -p "Presione cualquier tecla para continuar..."
        ;;
        7)
        clear
        read -rp "Ingrese ruta del fichero sea relativa o absoluta: " ruta
        cat -T "$ruta"
        echo ""
        read -rsn 1 -p "Presione cualquier tecla para continuar..."
        ;;
        8)
        clear
        read -rp "Ingrese ruta del fichero sea relativa o absoluta: " ruta
        cat -E "$ruta"
        echo ""
        read -rsn 1 -p "Presione cualquier tecla para continuar..."
        ;;
        9)
        clear
        read -rp "Ingrese ruta del fichero sea relativa o absoluta: " ruta
        cat -s "$ruta"
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

exit