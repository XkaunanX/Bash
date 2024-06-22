#!/bin/bash

#VARIABLE
opcion=""

while [ "$opcion" != "salir" ]
do
    clear
    echo "MENU PRINCIPAL: tar <modificador*> <NombreArchivoTar> <ArchivoQueSeraComprimirdo>"
    echo ""
    echo "1. Crear un archivo tar -cvf"
    echo "2. Crear un archivo tar comprimido -czvf"
    echo "3. Extraer un archivo tar -xvf"
    echo "4. Extrar un archivo tar comprimido -xzvf"
    echo "5. Listar contenido tar -tvf"
    echo "0. Salir"
    echo ""
    echo "Ruta Actual: $(pwd)"
    echo ""

    read -rp "Ingrese una opcion: " opcion

    case $opcion in
        1)
        clear
        read -rp "Ingrese ruta del directorio a empaquetar: " ruta
        read -rp "Ingrese el nombre: " nombre
        tar -cvf "$nombre".tar $ruta
        echo ""
        echo "$nombre.tar generado correctamete."
        echo ""
        read -rsn 1 -p "Presione cualquier tecla para continuar..."
        ;;
        2)
        clear
        read -rp "Ingrese ruta del directorio a empaquetar y comprimir: " ruta
        read -rp "Ingrese el nombre: " nombre
        tar -czvf "$nombre".tar.gz $ruta   
        echo ""
        echo "$nombre.tar.gz generado correctamete."
        echo ""
        read -rsn 1 -p "Presione cualquier tecla para continuar..."
        ;;
        3)
        clear
        read -rp "Ingrese ruta del directorio a desempaquetar: " ruta
        read -rp "Ingrese el nombre: " nombre
        tar -xvf "$nombre".tar
        echo ""
        echo "$nombre.tar desempaquetado correctamente."
        echo ""
        read -rsn 1 -p "Presione cualquier tecla para continuar..."
        ;;
        4)
        clear
        read -rp "Ingrese ruta del directorio a descomprimir y desempaquetar: " ruta
        read -rp "Ingrese el nombre: " nombre
        tar -xzvf "$nombre".tar.gz
        echo ""
        echo "$nombre.tar.gz descomprimido y desempaquetado correctamente."
        echo ""
        read -rsn 1 -p "Presione cualquier tecla para continuar..."
        ;;
        5)
        clear
        read -rp "Ingrese ruta del fichero.tar a listar su contenido: " fichero
        tar -tvf "$fichero"
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