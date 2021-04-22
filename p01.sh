#!/bin/bash
clear

if (( EUID != 0  ))
then
  echo "Aquest scripts'ha d'executar com a root"
  exit 1
fi

function canvi {
  echo -n "Nom de l'usuari del sistema:"
  read nom_usuari
  echo -n "posa la nova contrasenya:"
  read -s pass

if [[ $? -eq 0 ]]
then
  echo "$nom_usuari:$pass" | chpasswd
  echo "contrasenya canviada"
else
  echo "No s'ha canviat la contrasenya"
  exit 1
fi
}

cont='s'
while [ $cont == 's' ]
do
  canvi
  echo
  echo -n "Vols continuar? (s/n): "
  read cont
done

exit 1
