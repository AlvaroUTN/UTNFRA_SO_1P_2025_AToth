#!/bin/bash

sudo mkfs.ext4 -F /dev/sdc1 && sudo mkfs.ext4 -F /dev/sdc2 && sudo mkfs.ext4 -F /dev/sdc5 && sudo mkfs.ext4 -F /dev/sdc6 && sudo mkfs.ext4 -F /dev/sdc7

echo "/dev/sdc1 /home/vagrant/Astronomia/Planeta/Gravedad ext4 defaults 0 0" | sudo tee -a /etc/fstab  

echo "/dev/sdc2 /home/vagrant/Astronomia/Planeta/Orbita ext4 defaults 0 0" | sudo tee -a /etc/fstab  

echo "/dev/sdc5 /home/vagrant/Astronomia/Cometa/Cola ext4 defaults 0 0" | sudo tee -a /etc/fstab  

echo "/dev/sdc6 /home/vagrant/Astronomia/Cometa/Gravedad ext4 defaults 0 0" | sudo tee -a /etc/fstab  

echo "/dev/sdc7 /home/vagrant/Astronomia/Cometa/Orbita ext4 defaults 0 0" | sudo tee -a /etc/fstab   


sudo mount -a
