#!/bin/bash

#COPIAR ARCHIVO A OTRO DIRECTORIO
cp archivo.txt /home/damip/Escritorio/

#COPIAR DIRECTORIO A OTRO DIRECTORIO
cp directorio /home/damip/Escritorio/

#COPIAR UN DIRECTORIO RECURSIVAMENTE
cp -R origen/ destino/

#COPIAR PRESERVANDO ATRIBUROS Y PERMISOS ORIGINALES
cp -p archivo.txt copia.txt

#FORZAR COPIA SOBREESCRIBIENDO
cp -f nuevo.txt existente.txt

#MOSTRAR MENSAJE DE CONTROL
cp -i nuevo existenre.txt

#COPIAR MOSTRANDO EL PROGRESO
cp -v archivo.txt /home/damip/Escritorio/

#COPIAR A MULTIPLES DIRECCIONES
cp archivo.txt / /home /home/damip