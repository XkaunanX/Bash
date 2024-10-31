#!/bin/bash

# Es vacio
if [ -z "$1" ];
then
    pgrep -l .
    exit
fi

#Existe el usuario
if id "$1" >/dev/null 2>&1  ;
then
    pgrep -u "$1"
else
	echo "no existe"
	exit
fi

#Es root
if [ "$1" = "root" ];
then
    echo Error
    exit
fi