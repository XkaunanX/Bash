#!/bin/bash

#GUARDO TODAS LAS VARIABLES DE ENTORNO EN UN ARCHIVO
env > entorno.txt

#IMPRIMO LAS VARIABLES DE ENTORNO
echo ""
echo "Directorio anterior de trabajo $OLDPWD"
echo "Directorio actual de trabajo: $PWD"
echo ""
echo "INFORMACION DEL SHELL"
echo "Lista de directoios donde el sistema operativo busca ejecutables de comandos $PATH"
echo "Ruta del ejecutable $BASH"
echo "Version de BASH intalada $BASH_VERSION"
echo "Ruta de manuales $MANPATH"
echo "Anidamiento del shell $SHLVL"
echo "Terminal emulado $TERM"
echo ""
echo "INFORMACION DEL SISTEMA"
echo "Usuario actual: $USER"
echo "Id Usuario $UID"
echo "Id Efectivo $EUID"
echo "Grupo usuario $GROUPS"
echo "Directorio principal del usuario actual: $HOME"
echo "Ruta del shell predeterminado del usuario: $SHELL"
echo ""
echo "INFORMACION DEL SISTEMA"
echo "Tipo de sistema operativo: $OSTYPE $HOSTYPE $MACHTYPE"
echo "Nombre del host $HOSTNAME"
echo ""

