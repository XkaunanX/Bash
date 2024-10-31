#!/bin/bash

# Función para instalar Apache en sistemas Debian/Ubuntu
instalar_apache_debian() {
    echo "Instalando Apache en Debian/Ubuntu..."
    sudo apt-get update
    sudo apt-get install -y apache2

    # Iniciar y habilitar el servicio Apache
    sudo systemctl start apache2
    sudo systemctl enable apache2

    echo "Apache instalado y en ejecución."
}

# Función para instalar Apache en sistemas Red Hat/CentOS
instalar_apache_redhat() {
    echo "Instalando Apache en Red Hat/CentOS..."
    sudo yum install -y httpd

    # Iniciar y habilitar el servicio Apache
    sudo systemctl start httpd
    sudo systemctl enable httpd

    echo "Apache instalado y en ejecución."
}

# Verificar el sistema operativo y ejecutar la instalación correspondiente
if [ -f /etc/debian_version ]; then
    instalar_apache_debian
elif [ -f /etc/redhat-release ]; then
    instalar_apache_redhat
else
    echo "Sistema operativo no soportado. Por favor, instale Apache manualmente."
    exit 1
fi

# Mensaje final
echo "Instalación completada. Puedes acceder a Apache en http://localhost/"
