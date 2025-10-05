#!/bin/bash

sudo fdisk /dev/sdc << EOF

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
