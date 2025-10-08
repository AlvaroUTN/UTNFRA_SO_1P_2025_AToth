#!/bin/bash


mkdir -p ~/Punto_F

grep "MemTotal" /proc/meminfo | awk '{print $2}' | tee ~/Punto_F/Filtro_basico.txt

grep "model name" /proc/cpuinfo | head -n 1 | awk -F': ' '{print $2}' | tee -a ~/Punto_F/Filtro_basico.txt

grep "cpu MHz" /proc/cpuinfo | head -n 1 | awk '{print $4}' | tee -a ~/Punto_F/Filtro_basico.txt


