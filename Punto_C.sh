#!/bin/bash

USUARIO=$1
HASH=$(sudo grep ${USUARIO} /etc/shadow | awk -F ':' '{print $2}')
CLAVE=$'vagrant'

sudo groupadd p1c1_2025_g1
sudo groupadd p1c1_2025_gTodos

sudo useradd -m -s /bin/bash -G p1c1_2025_g1 p1c1_2025_u1
sudo useradd -m -s /bin/bash -G p1c1_2025_g1 p1c1_2025_u2
sudo useradd -m -s /bin/bash -G p1c1_2025_gTodos -p "$HASH" p1c1_2025_u3

echo "Ingrese clave alumno u1"
sudo passwd p1c1_2025_g1

echo "Ingrese clave alumno u2"
sudo passwd p1c1_2025_u2




