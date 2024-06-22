#!/bin/bash

#VARIABLES
a=10
b=5
c=2
contador=0

#SUMA
add=$((a+b))
echo "La suma de $a y $b es $add"

#RESTA
neg=$((a+b))
echo "La resta de $a - $b es $neg"

#MULTIPLICACION
mul=$((a+b))
echo "La multiplicacion de $a y $b es $mul"

#DIVISION
div=$((a+b))
echo "La division de $a / $b es $div"

#RESTO
resto=$((a%b))
echo "EL resto de la division de $a / $b es $resto"

#EXPONENCIAL
exponencial=$((a**b))
echo "El exponencial de base: $a y Exponente: $b es $exponencial"

#OPERACIONES COMBINADAS
resultado=$(((a+b)*c))
echo "La operacion combinada ($a + $b) * $b es $resultado"

#CONTADOR INCREMENTO
((contador++))
echo "Contador vale: $contador"

#CONTADOR DECREMENTO
((contador--))
echo "Contador vale: $contador"

#ASIGNACION COMBINADA SUMA
((contador += 5))
echo "Contador vale: $contador"

#ASIGNACION COMBINADA MULTIPLICACION
((contador *= 2))
echo "Contador vale: $contador"

#COMPARACION CON LET (MAYOR)
if ((a > b))
then
    echo "$a es mayor que $b"
    ((a-(b+c)))                 #seteo a menor que b
fi

#COMPARACION CON LET (MENOR)
if ((a < b))
then
    echo "$a es menor que $b"
fi