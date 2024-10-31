#!/bin/bash

# VARIABLE
opcion=""

while true; do
    clear
    echo "MENU PARA COPIAR ARCHIVOS Y DIRECTORIOS"
    echo "1. Copiar archivo a otro directorio"
    echo "2. Copiar directorio a otro directorio"
    echo "3. Copiar un directorio recursivamente"
    echo "4. Copiar preservando atributos y permisos originales"
    echo "5. Forzar copia sobreescribiendo"
    echo "6. Mostrar mensaje de control antes de copiar"
    echo "7. Copiar mostrando el progreso"
    echo "8. Copiar a múltiples direcciones"
    echo "0. Salir"
    echo ""

    read -rp "Ingrese una opción: " opcion

    case $opcion in
        1)
            clear
            read -rp "Ingrese el nombre del archivo a copiar: " archivo
            read -rp "Ingrese la ruta del directorio de destino: " destino
            cp "$archivo" "$destino" && echo "Archivo '$archivo' copiado a '$destino'." || echo "Error al copiar '$archivo'."
            ;;
        2)
            clear
            read -rp "Ingrese el nombre del directorio a copiar: " dirOrigen
            read -rp "Ingrese la ruta del directorio de destino: " dirDestino
            cp -R "$dirOrigen" "$dirDestino" && echo "Directorio '$dirOrigen' copiado a '$dirDestino'." || echo "Error al copiar '$dirOrigen'."
            ;;
        3)
            clear
            read -rp "Ingrese el nombre del directorio a copiar recursivamente: " dirRecursivo
            read -rp "Ingrese la ruta del directorio de destino: " destinoRecursivo
            cp -R "$dirRecursivo" "$destinoRecursivo" && echo "Directorio '$dirRecursivo' copiado recursivamente a '$destinoRecursivo'." || echo "Error al copiar '$dirRecursivo'."
            ;;
        4)
            clear
            read -rp "Ingrese el nombre del archivo a copiar con atributos: " archivoAtributos
            read -rp "Ingrese el nombre del archivo de copia: " copiaAtributos
            cp -p "$archivoAtributos" "$copiaAtributos" && echo "Archivo '$archivoAtributos' copiado preservando atributos a '$copiaAtributos'." || echo "Error al copiar '$archivoAtributos'."
            ;;
        5)
            clear
            read -rp "Ingrese el nombre del archivo nuevo: " nuevoArchivo
            read -rp "Ingrese el nombre del archivo existente a sobrescribir: " existenteArchivo
            cp -f "$nuevoArchivo" "$existenteArchivo" && echo "Archivo '$nuevoArchivo' copiado sobre '$existenteArchivo'." || echo "Error al sobrescribir '$existenteArchivo'."
            ;;
        6)
            clear
            read -rp "Ingrese el nombre del archivo a copiar con control: " archivoControl
            read -rp "Ingrese el nombre del archivo de destino: " destinoControl
            cp -i "$archivoControl" "$destinoControl" && echo "Archivo '$archivoControl' copiado a '$destinoControl'." || echo "Error al copiar '$archivoControl'."
            ;;
        7)
            clear
            read -rp "Ingrese el nombre del archivo a copiar mostrando progreso: " archivoProgreso
            read -rp "Ingrese la ruta del directorio de destino: " destinoProgreso
            cp -v "$archivoProgreso" "$destinoProgreso" && echo "Archivo '$archivoProgreso' copiado a '$destinoProgreso'." || echo "Error al copiar '$archivoProgreso'."
            ;;
        8)
            clear
            read -rp "Ingrese el nombre del archivo a copiar: " archivoMulti
            read -rp "Ingrese las rutas de destino (separadas por espacio): " destinosMulti
            cp "$archivoMulti" $destinosMulti && echo "Archivo '$archivoMulti' copiado a múltiples destinos." || echo "Error al copiar '$archivoMulti'."
            ;;
        0)
            clear
            echo "Saliendo del programa..."
            exit
            ;;
        *)
            clear
            echo "Opción inválida. Por favor, ingrese nuevamente una opción."
            ;;
    esac

    read -rsn 1 -p "Presione cualquier tecla para continuar..."
done

exit
