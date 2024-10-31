#!/bin/bash

# Función para verificar si dmidecode está instalado
verificar_dmidecode() {
    if command -v dmidecode >/dev/null 2>&1; then
        return 0  # dmidecode está instalado
    else
        return 1  # dmidecode no está instalado
    fi
}

# Función para instalar dmidecode
instalar_dmidecode() {
    echo "dmidecode no está instalado. Intentando instalar..."
    if [ -f /etc/debian_version ]; then
        sudo apt-get update
        sudo apt-get install -y dmidecode
    elif [ -f /etc/redhat-release ]; then
        sudo yum install -y dmidecode
    else
        echo "Sistema operativo no soportado. Por favor, instale dmidecode manualmente."
        exit 1
    fi
}

# Función para obtener información de memoria
obtener_info_memoria() {
    echo "Cantidad máxima de memoria física que se puede instalar:"
    sudo dmidecode -t memory | grep "Maximum Capacity"

    echo "Tamaño máximo del módulo de memoria:"
    sudo dmidecode -t memory | grep "Maximum Module Size"
}

# Verificar si dmidecode está instalado
if verificar_dmidecode; then
    echo "dmidecode está instalado."
else
    instalar_dmidecode
fi

# Obtener información sobre la memoria
obtener_info_memoria