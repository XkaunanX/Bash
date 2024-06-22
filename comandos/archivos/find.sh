#!/bin/bash

#VARIABLE
opcion=""

while [ "$opcion" != "salir" ]
do
    clear
    echo "MENU PRINCIPAL: find <RutaInical> <tipoFiltrado> <valorFiltro> <accionEnLosFiltrados> <comando?> <{} \;>"
    echo ""
    echo "1. Buscar archivos especificos por nombre en un directorio y sus subdirectorios"
    echo "2. Buscar archivos por extension"
    echo "3. Buscar archivos por tipo"
    echo "4. Buscar archivos por tamaño"
    echo "5. Ejecutar comando en archivos encontrados"
    echo "6. Buscar archivos modificados recientemente"
    echo "7. Buscar y eliminar archivos encontrados"
    echo "8. Buscar archivos y ejecutar script en ellos"
    echo "0. Salir"
    echo ""
    echo "Ruta Actual: $(pwd)"
    echo ""

    read -rp "Ingrese una opcion: " opcion

    case $opcion in
        1)
        clear
        echo ""
        read -rp "Ingrese la ruta donde se inicia la busqueda " ruta
        read -rp "Ingrese el nombre a encontrar " nombre
        find "$ruta" -name "$nombre"
        echo ""
        read -rsn 1 -p "Presione cualquier tecla para continuar..."
        ;;
        2)
        clear
        echo ""
        read -rp "Ingrese la ruta donde se inicia la busqueda " ruta
        read -rp "Ingrese la extension a filtrar " extension
        find "$ruta" -name "*.$extension"
        echo ""
        read -rsn 1 -p "Presione cualquier tecla para continuar..."
        ;;
        3)
        clear
        echo ""
        read -rp "Ingrese la ruta donde se inicia la busqueda " ruta
        echo ""
        echo "f para archivos regulares."
        echo "d para directorios."
        echo "l para enlaces simbólicos."
        echo ""
        read -rp "Ingrese el tipo de fichero " tipo
        find "$ruta" -type "$tipo"
        echo ""
        read -rsn 1 -p "Presione cualquier tecla para continuar..."
        ;;
        4)
        clear
        echo ""
        read -rp "Ingrese la ruta donde se inicia la busqueda " ruta
        read -rp "Ingrese el tamaño en bytes a buscar con el formato <+,-><int><c|k|M|G]> " tamano
        find "$ruta" -size "$tamano"
        echo ""
        read -rsn 1 -p "Presione cualquier tecla para continuar..."
        ;;
        5)
        clear
        echo ""
        read -rp "Ingrese la ruta donde se inicia la busqueda " ruta
        read -rp "Ingrese el nombre a encontrar " nombre
        read -rp "Ingrese el comando a ejecutar " comando
        find "$ruta" -name "$nombre" -exec bash -c $comando {} \;
        echo ""
        read -rsn 1 -p "Presione cualquier tecla para continuar..."
        ;;
        6)
        clear
        echo ""
        read -rp "Ingrese la ruta donde se inicia la busqueda " ruta
        read -rp "Ingrese el rango de dia con el formato +/-<int> " rango
        find "$ruta" -mtime "$rango"
        echo ""
        read -rsn 1 -p "Presione cualquier tecla para continuar..."
        ;;
        7)
        clear
        echo ""
        read -rp "Ingrese la ruta donde se inicia la busqueda " ruta
        read -rp "Ingrese el nombre a encontrar " nombre
        find "$ruta" -name "$nombre" -delete
        echo ""
        read -rsn 1 -p "Presione cualquier tecla para continuar..."
        ;;
        8)
        clear
        echo ""
        read -rp "Ingrese la ruta donde se inicia la busqueda " ruta
        read -rp "Ingrese el nombre a encontrar " nombre
        read -rp "Ingrese el nombre del script a ejecutar " nombrecomando
        find "$ruta" -name "$nombre" -exec bash -c "$nombrecomando" {} \;
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