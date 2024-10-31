#!/bin/bash

if [ "$#" -lt 1 ]; then
    echo "Uso: $0 fruta1 fruta2 ..."
    exit
fi

for fruta in "$@"
do
    echo "Me gusta comer $fruta"
done