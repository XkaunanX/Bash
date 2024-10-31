#!/bin/bash

# VARIABLE
opcion=""

while [ "$opcion" != "salir" ]; do
    clear
    echo "MENU PRINCIPAL: tar <modificador*> <NombreArchivoTar> <ArchivoQueSeraComprimido>"
    echo ""
    echo "1. Crear un archivo tar -cvf"
    echo "2. Crear un archivo tar comprimido -czvf"
    echo "3. Extraer un archivo tar -xvf"
    echo "4. Extraer un archivo tar comprimido -xzvf"
    echo "5. Listar contenido de un tar -tvf"
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
            if [ -d "$ruta" ]; then
                tar -cvf "$nombre".tar -C "$(dirname "$ruta")" "$(basename "$ruta")"
                echo ""
                echo "$nombre.tar generado correctamente."
            else
                echo "La ruta especificada no es un directorio válido."
            fi
            read -rsn 1 -p "Presione cualquier tecla para continuar..."
            ;;
        2)
            clear
            read -rp "Ingrese ruta del directorio a empaquetar y comprimir: " ruta
            read -rp "Ingrese el nombre: " nombre
            if [ -d "$ruta" ]; then
                tar -czvf "$nombre".tar.gz -C "$(dirname "$ruta")" "$(basename "$ruta")"
                echo ""
                echo "$nombre.tar.gz generado correctamente."
            else
                echo "La ruta especificada no es un directorio válido."
            fi
            read -rsn 1 -p "Presione cualquier tecla para continuar..."
            ;;
        3)
            clear
            read -rp "Ingrese el nombre del archivo tar a desempaquetar: " nombre
            if [ -f "$nombre".tar ]; then
                tar -xvf "$nombre".tar
                echo ""
                echo "$nombre.tar desempaquetado correctamente."
            else
                echo "El archivo $nombre.tar no existe."
            fi
            read -rsn 1 -p "Presione cualquier tecla para continuar..."
            ;;
        4)
            clear
            read -rp "Ingrese el nombre del archivo tar.gz a descomprimir y desempaquetar: " nombre
            if [ -f "$nombre".tar.gz ]; then
                tar -xzvf "$nombre".tar.gz
                echo ""
                echo "$nombre.tar.gz descomprimido y desempaquetado correctamente."
            else
                echo "El archivo $nombre.tar.gz no existe."
            fi
            read -rsn 1 -p "Presione cualquier tecla para continuar..."
            ;;
        5)
            clear
            read -rp "Ingrese la ruta del fichero tar a listar su contenido: " fichero
            if [ -f "$fichero" ]; then
                tar -tvf "$fichero"
            else
                echo "El archivo $fichero no existe."
            fi
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
