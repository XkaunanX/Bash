#!/bin/bash

echo "PID: $$"

intentos=0
apuesta=0

while [ $apuesta -ne $$ ]; 
do
    read -p "intenta adivinar mi PID:" apuesta
    if [  $apuesta -gt $$ ];
    then
        echo "mi PID es menor que lo que ingresaste"
    elif [ $apuesta -lt $$ ];
    then
        echo "mi PID es mayor que lo que ingresaste"
    fi
    let intentos++
done

echo "adivinaste!"
echo "Mi PID es: $$"
echo "Necesitaste: $intentos intentos"

exit