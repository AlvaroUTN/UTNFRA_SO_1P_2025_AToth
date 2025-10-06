#!/bin/bash

sudo mkdir -p /Punto_D/{Libros,Musica,Videos}/{elemento}

whoami | sudo tee /Punto_D/{Libros,Musica,Videos}/elemento/salida_whoami.txt


