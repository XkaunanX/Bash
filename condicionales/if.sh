#!/bin/bash

#VARIABLE
edad=0
cadena1="Hola"
cadena2="Hola"
archivo=""
directorio=""

echo "Ingrese la edad: "
read -r edad

#EJEMPLO COMPARACION DE INTEGER
if [ "$edad" -ge 18 ]
then
    echo "Eres mayor de edad"
else
    echo "Eres menor de edad"
fi

#EJEMPLO COMPARACION DE STRING
if [ "$cadena1" = "$cadena2" ]
then
    echo "Las cadenas son iguales ($cadena1 = $cadena2)"
else
    echo "Las cadenas son distintas ($cadena1 != $cadena2)"
fi

#USO DEL ELIF
echo "Ingrese una opcion [A, B, C]"
read -r opcion

if [ "$opcion" = "A" ]
then
    echo "Seleccionaste la opcion A"
elif [ "$opcion" = "B" ]
then
    echo "Seleccionaste la opcion B"
elif [ "$opcion" = "c" ]
then
    echo "Seleccionaste la opcion C"
else
    echo "Opcion no reconocida"
fi

echo "Ingresa un archivo"
read -r directorio
#VERIFICAR SI EXISTE EL ARCHIVO
if [ -f "$archivo" ]
then
    echo "El archivo $archivo existe"
else
    echo "El archivo $archivo no existe o no es regular"
fi

echo "Ingresa un directorio"
read -r directorio
#VERIFICAR SI EXISTE EL DIRECTORIO
if [ -d "$directorio" ]
then
    echo "El directorio $directorio existe"
else
    echo "El directorio $directorio no existe"
fi