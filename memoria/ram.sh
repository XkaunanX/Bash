#!/bin/bash

while true; do

    MemoriaTotal=$(free -h | tail -2 | head -1 | awk '{print $2}' > informe.txt)

    MemoriaLibre=$(free -h | tail -2 | head -1 | awk '{print $4}' >> informe.txt)

    let porcentaje=$MemoriaLibre*100/$MemoriaTotal
    
    echo "Porcentaje: $porcentaje"

    if [ $porcentaje -lt $1 ]; then
        echo "Memoria libre por debajo del umbral"
    fi

done