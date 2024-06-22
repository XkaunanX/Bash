#!/bin/bash

#VERIFICAR SI EXITEN PARAMETROS
if [ $# -eq 0 ]
then
    echo "No se proporcionaron parametros"
    echo "Uso: $0 <Fichero> <Directorio>"
fi

#VERIFICAR CANTIDAD DE PARAMETROS
if [ "$#" -ne 2 ]
then
    echo "Parametros de: $0 <Fichero> <Directorio>"
    exit
fi

#EJEMPLO DE VALIDACION SI ES UN ARCHIVO POR PARAMETRO
if [ ! -f "$1" ]
then
    echo "El parametro $1 no es un fichero valido"
    exit
fi

#EJEMPLO DE VALIDACION SI ES UN DIRECTORIO POR PARAMETRO
if [ ! -d "$2" ]
then
    echo "El parametro $2 no es un directorio"
fi

#VERIFICAR PERMISOS DE EJECUCION
if [ ! -x "$SCRIPT" ]
then
    echo "No tienes permiso para ejecutar el script"
    exit
fi
