#!/bin/bash

lista=("Ana" "Juan" "Maria" "Pedro")

for item in "${lista[@]}"
do
    echo "hola $item"
done