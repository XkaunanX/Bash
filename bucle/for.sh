#!/bin/bash

#EJEMPLO ENUMERAR EN LISTA
for fruta in mazana pera banana sandia
do
    echo "Me gusta comer $fruta"
done

#EJEMPLO ITERAR SOBRE CARPETA ACTUAL AQUELLOS CON EXTENSION .txt
for archivo in *.txt
do
    echo "Procesando archivos: $archivo"
done

#EJEMPLO ENUMERAR RANGO NUMERICO
for numero in {1..5}
do
    echo "Numero: $numero"
done

#EJEMPLO USAR COMANDO CON LISTADO OBTENIDO DE UN COMANDO
for archivo in $(ls *.sh)
do
    echo "Archivo encontrado: $archivo"
done

#EJEMPLO ITERAR SOBRE LOS ARGUMENTOS DE LINEA DE COMANDOS
for argumento in "$@"
do
    echo "Argumento: $argumento"
done

#EJEMPLO ITERAR SOBRE SECUENCIA GENERADA POR COMANDO
for i in $(seq 1 2 10)
do
    echo "Numerio seq: $i"
done

#ITERAR SOBRE COMANDO FIND
for archivo in $(find . -name "*.txt")
do
    echo "Archivo encontrado: $archivo"
done

# $(COMANDO) Realiza la expansion del comando y DEVUELVE la captura de la salida estandar del comando dentro de los parentesis
# $@ Devuelve la lista del total de los argumentos ingresados