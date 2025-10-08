#!/bin/bash

mkdir -p ~/Punto_G

IP_PUBLICA=$(curl -s icanhazip.com)

CPU_MODELO=$(grep "model name" /proc/cpuinfo | head -n 1 | awk -F': ' '{print $2}')

FREQ_GHZ=$(grep "cpu MHz" /proc/cpuinfo | head -n 1 | awk '{print $4}') 


echo "Mi ip publica es: $IP_PUBLICA" | tee ~/Punto_G/Filtro_Avanzado.txt

echo "CPU Modelo: $CPU_MODELO Frecuencia: $FREQ_GHZ" | tee -a ~/Punto_G/Filtro_Avanzado.txt


