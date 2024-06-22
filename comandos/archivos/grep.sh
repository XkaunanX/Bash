#!/bin/bash

#VARIABLE
opcion=""

while [ "$opcion" != "salir" ]
do
    clear
    echo "MENU PRINCIPAL: grep <modificador*> <'patron'> <analizado>"
    echo ""
    echo "1.  Buscar patron en un archivo"
    echo "2.  Buscar de manera recursiva un patron en directorio y sus hijos -r"
    echo "3.  Buscar patron de manera que no interese las mayusculas o minusculas -i"
    echo "4.  Mostrar nombre de quellos archivos que contengan el patron -l"
    echo "5.  Devuelve aquellas lineas que no coincidan -v"
    echo "6.  Mostrar el numero de linea de las coincidencias -n"
    echo "7.  grep -A 2 -B 1 Devuelve un numero especifico de lineas antes y depues de encontrar el patron"
    echo "8.  Buscar patrones de expresiones regulares -E"
    echo "9.  Devuelve la cantidad de veces que existe el patron en el analizado"
    echo "12. Buscar lineas que comiencen con un patron especifico ('^patron')"
    echo "13. Buscar lineas que terminen con un patron especifico ('patron$')"
    echo "14. Buscar lineas que contenga una palabra especifica como palabra completa -w"
    echo "15. Buscar archivos en un rango de fechas especifico (grep con find)"
    echo "0.  Salir"
    echo ""
    echo "Ruta Actual: $(pwd)"
    echo ""

    read -rp "Ingrese una opcion: " opcion

    case $opcion in
        1)
        clear
        read -rp "Ingrese ruta del fichero a analizar " ruta
        read -rp "Ingrese el patron a reconocer: " patron
        echo ""
        echo "Devolucion:"
        echo ""
        grep "$patron" "$ruta"
        echo ""
        read -rsn 1 -p "Presione cualquier tecla para continuar..."
        ;;
        2)
        clear
        read -rp "Ingrese ruta del directorio a analizar " ruta
        read -rp "Ingrese el patron a reconocer: " patron
        echo ""
        echo "Devolucion:"
        echo ""
        grep -r "$patron" "$ruta"
        echo ""
        read -rsn 1 -p "Presione cualquier tecla para continuar..."
        ;;
        3)
        clear
        read -rp "Ingrese ruta del fichero a analizar " ruta
        read -rp "Ingrese el patron a reconocer: " patron
        echo ""
        echo "Devolucion:"
        echo ""
        grep -i "$patron" "$ruta"
        echo ""
        read -rsn 1 -p "Presione cualquier tecla para continuar..."
        ;;
        4)
        clear
        read -rp "Ingrese ruta del fichero a analizar " ruta
        read -rp "Ingrese el patron a reconocer: " patron
        echo ""
        echo "Devolucion:"
        echo ""
        #ES NECESARIA LA RECURSIVIDAD POR LAS DUDAS
        grep -lr "$patron" "$ruta/"
        echo ""
        read -rsn 1 -p "Presione cualquier tecla para continuar..."
        ;;
        5)
        clear
        read -rp "Ingrese ruta del fichero a analizar " ruta
        read -rp "Ingrese el patron a reconocer: " patron
        echo ""
        echo "Devolucion:"
        echo ""
        grep -v "$patron" "$ruta"
        echo ""
        read -rsn 1 -p "Presione cualquier tecla para continuar..."
        ;;
        6)
        clear
        read -rp "Ingrese ruta del fichero a analizar " ruta
        read -rp "Ingrese el patron a reconocer: " patron
        echo ""
        echo "Devolucion:"
        echo ""
        grep -n "$patron" "$ruta"
        echo ""
        read -rsn 1 -p "Presione cualquier tecla para continuar..."
        ;;
        7)
        clear
        read -rp "Ingrese la cantidad de lineas antes de la coincidencia " after
        read -rp "Ingrese la cantidad de lineas despues de la coincidencia " before
        read -rp "Ingrese la cantidad de lineas antes y despues de la coincidencia " context
        read -rp "Ingrese ruta del fichero a analizar " ruta
        read -rp "Ingrese el patron a reconocer: " patron
        echo ""
        echo "Devolucion:"
        echo ""
        grep -A "$after" -B "$before" -C "$context" "$patron" "$ruta"
        echo ""
        read -rsn 1 -p "Presione cualquier tecla para continuar..."
        ;;
        8)
        clear
        read -rp "Ingrese ruta del fichero a analizar " ruta
        read -rp "Ingrese el primer patron a reconocer: " patron1
        read -rp "Ingrese el segundo patron a reconocer: " patron2
        echo ""
        echo "Devolucion:"
        echo ""
        grep -E "$patron1|$patron2" "$ruta"
        echo ""
        read -rsn 1 -p "Presione cualquier tecla para continuar..."
        ;;
        9)
        clear
        read -rp "Ingrese ruta del fichero a analizar " ruta
        read -rp "Ingrese el patron a reconocer: " patron
        echo ""
        echo "Devolucion:"
        echo ""
        grep -c "$patron" "$ruta"
        echo ""
        read -rsn 1 -p "Presione cualquier tecla para continuar..."
        ;;
        12)
        clear
        read -rp "Ingrese ruta del fichero a analizar " ruta
        read -rp "Ingrese el patron inicial a reconocer " patron
        echo ""
        echo "Devolucion:"
        echo ""
        grep "^$patron" "$ruta"
        echo ""
        read -rsn 1 -p "Presione cualquier tecla para continuar..."
        ;;
        13)
        clear
        read -rp "Ingrese ruta del fichero a analizar " ruta
        read -rp "Ingrese el patron final a reconocer " patron
        echo ""
        echo "Devolucion:"
        echo ""
        grep "$patron$" "$ruta"
        echo ""
        read -rsn 1 -p "Presione cualquier tecla para continuar..."
        ;;
        14)
        clear
        read -rp "Ingrese ruta del fichero a analizar " ruta
        read -rp "Ingrese el patron de la palabra completa especifica " patron
        echo ""
        echo "Devolucion:"
        echo ""
        grep -w "$patron" "$ruta"
        echo ""
        read -rsn 1 -p "Presione cualquier tecla para continuar..."
        ;;
        15)
        clear
        read -rp "Ingrese el patron de la palabra completa especifica " patron
        echo ""
        echo "Devolucion:"
        echo ""
        #find . inicia la busqueda con el directorio actual, puede ser otro
        #-type f indica que se debe buscar unicamente en archivos regulares
        #-newermt 2024-1-01 esto filta los archivos que fueron modificadps despues de la fecha especificada "newer modified time"
        #! -newermt 2024-5-18 esto filtra los archivos que no fueron modificados despues de la fecha y hora especificado
        #-exec indica que debe ejecutar algo 
        #-exec grep "patron" indica que se ejecutara grep con un patron dado
        #-exec grep "patron" {} las llaves indican que aquellos archivos que son de entrada para grep seran dados por find
        #-exec grep "patron" {} +, {} + es una forma de decirle a find que reemplace {} con la lista de archivos que coinciden y ejecute grep "patrón" en todos esos archivos en una sola llamada
        find / -type f -newermt 2024-01-01 ! -newermt 2024-06-18 -exec grep "$patron" {} +
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