#!/bin/bash

read -rp "Ingrese el archivo a detallar..." archivo

#MOSTRAR INFORMACION DETALLADA DE UN ARCHIVO
stat "$archivo"

#MOSTRAR INFORMACION EN UN FORMATO ESPECIFICO
stat -c '%n %s bytes %y' "$archivo"

#MOSTRAR INFORMACION EN FORMATO DETALLADO
stat -x "$archivo"

#MOSTRAR NUMEROS DE SERIE DE ARCHIVO
stat -f "$archivo"