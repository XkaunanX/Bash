#!/bin/bash

#HACER UN SCRIPT QUE REALICE LOS SIGUIENTES PASOS
#   -LIMPIAR PANTALLA
#   -EJECUTAR COMANDO df
#   -BUSCAR EN LA SALIDA DEL COMANDO ANTERIOR EL ESPACIO DISPONIBLE EN EL SISTEMA DE ARCHIVOS RAIZ
#   -MOSTRAR UN MENSJAE POR PANTALLA QUE DIGA: EL ESPACIO DISPONIBLE EN EL SISTEMA DE ARCHIVOS ES: XXXXXXXX

clear   #LIMPIO PANTALLA

echo "Informacion del uso en disco"

echo ""

df -h   #MUESTRO INFORMACION SOBRE EL USO DEL ESPACIO EN DISCO DE LOS SITEMAS DE ARCHIVOS, -h FORMATEA A UNIDADES kb mb gb tb

echo ""

echo "Filtrado de la linea que contiene la ruta raiz de linux"

echo ""

df -h | grep -w "/" #FILTRO UNA LINEA CON GREP QUE CONTIENE / QUE ES LA RAIZ DE LINUX

echo ""

echo "Espacio disponible"

echo ""

df -h | grep -w "/" | awk '{print$4}' #CORTO CON AWK EL VALOR EN LA 4 POSICION 

echo ""

read -rp "Presione para continuar..."

#MAYOR EJEMPLO DE PIPING: Contar las palabras más comunes en un archivo

cat archivos.txt | tr -s ' ' '\n' | sort | uniq -c | sort -rn | head -10