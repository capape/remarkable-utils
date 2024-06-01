#!/bin/bash

remarkable_ip=${1}

echo "Copying user files..."

mkdir -p remarkable-backup/files

scp -r \
  root@${remarkable_ip}:/home/root/.local/share/remarkable/xochitl/ \
  remarkable-backup/files/

echo "Copying configuration files..."
mkdir -p remarkable-backup
scp -r \
  root@${remarkable_ip}:/home/root/.config/remarkable/xochitl.conf \
  remarkable-backup/


echo "Copying root home..."
mkdir -p remarkable-backup
scp -r \
  root@${remarkable_ip}:/home/root/ \
  remarkable-backup/files/