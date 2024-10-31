#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Uso: $0 <argumento> <argumento> ..."
    exit 1
fi

for argumento in "$@"; do
    echo "Argumento: $argumento"
done