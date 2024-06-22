#!/bin/bash

#ASIGNACION DIRECTA
nombre="juan"
echo "Hola, $nombre. Bienvenido al script de Bash"
fichero="variables.txt"

#CONCATENACION
nombre="Ana"
apellido="Garcia"
completo="$nombre $apellido"
echo "$completo"

#DESDE CONSOLA
echo "Por favor, Ingrese su nombre:"
read -r nombre
echo "hola, $nombre. BIenvenido al script"

#DESDE PARAMETRO
parametro="$1"
echo "El parametro 1 es $parametro"

#DESDE COMANDO
variable=$(date +"%Y-%m-%d %H:%M:%S")
echo "El valor de date es: $variable"

#DESDE ARCHIVO
variable=$(<"$fichero")

#EJEMPLO DE VECTOR
lista=("Ana" "Juan" "Maria" "Pedro")

for item in "${lista[@]}"
do
    echo "hola $item"
done

#EJEMPLO DE USO EN CONDICIONAL
if test -f "$fichero"
then
    echo "Existe y es regular"
fi

#EJEMPLO ASIGNAR VALOR DE VARIABLE A ARCHIVO
mensaje="Hola mundo"
echo "$mensaje" > MyFile.txt
