#!/bin/bash

total=$(free -h | tail -2 | head -1 | awk '{print $2}')

libre=$(free -h | tail -2 | head -1 | awk '{print $4}')

let p=$libre*100/$total

echo "porcentaje: $p"

if [ $p -lt 70 ];
then
	echo "Memoria baja" > "informe.txt"

	total=$(free -h | tail -2 | head -1 | awk '{print $2}' >> "informe.txt")

	libre=$(free -h | tail -2 | head -1 | awk '{print $4}' >> "informe.txt")
fi


#Crontab -e

# ****** /ruta

# */5 0-8 * * * /ruta/memoria.sh