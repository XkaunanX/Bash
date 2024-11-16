#!/bin/bash

if [ -z "$1" ];
then
	echo "Uso: <Usuario>"
	exit
fi

#filtro
c=$(last -F "$1" | grep "Nov")

if [ -n "$c" ];
then
	echo "Se conecto"
else
	echo "No se conecto"
fi

# crontab

# minuto hora dia(mes) mes dia(semana)

# * * * * 1,4 /ruta/conexion.sh