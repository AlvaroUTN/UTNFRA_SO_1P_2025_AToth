#!/bin/bash

DISCO=$(sudo fdisk -l | grep "8 GIB" | awk '{print $2}' | awk -F ':' '{print $1}')

sudo fdisk $DISCO << EOF

n
p
1

+1G
n
p
2

+1G
n
e
3


n

+1G
n

+1G
n


w
EOF
