#!/bin/bash

clear
if (( EUID != 0 ))
then
  echo "Aquest script s'ha d'executar amb prilegis de l'usuari root"
  exit 1 
fi

echo -n "Posa un dia i un mes per trobar els logs:"
read data

if [[ ! $data -eq 0  ]]
then
  echo "hi ha logs per aquesta data"
else
  echo "no hi ha logs per aquesta data"
  
fi
exit 0

