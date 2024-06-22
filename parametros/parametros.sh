#!/bin/bash

echo "Nombre del script: $0"
echo "Primer argumento: $1"
echo "Todos los argumentos (forma 1): $@"
echo "Todos los argumentos (forma 2): $*"
echo "Número de argumentos: $#"
echo "PID del script actual: $$"
echo "Codigo de salida del ultimo comando: $?"