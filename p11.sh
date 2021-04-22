#!/bin/bash

clear

if (( EUID != 0 ))
then
  echo "Aquest script s'ha d'executar amb prilegis de l'usuari root"
  exit 1 
fi

echo -n "Posa una url:"
read url

if [[ $url -eq 0 ]]
then
 nslookup $url
else
  echo "Error al posar la url"

