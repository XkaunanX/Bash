#!/bin/bash

if [ "$#" -ne 2 ]
then
    echo "Uso: $0 <Nombre> <Apellido>"
    exit
fi

nombre="$1"
apellido="$2"

completo="$nombre $apellido"

echo "$completo"