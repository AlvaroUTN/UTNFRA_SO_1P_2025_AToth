#!/bin/bash

echo "Actualizando paquetes..."
sudo apt update -y

echo "Instalando Ansible..."
sudo apt install ansible -y

echo "Verificando la versión instalada de Ansible..."
ansible --version

echo "Instalación de Ansible completada."
