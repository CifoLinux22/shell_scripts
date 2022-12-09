#! /bin/sh

# Implementar un Shell script (limit.sh) que controli el numero d'elements que conté una carpeta concreta.
# Quan es sobrepassi un límit definit per teclat a l'iniciar-se, ens ha de donat un missatge d'alerta per pantalla.

red='\033[0;31m'
green='\033[0;32m'
nocolor='\33[0:30m'

read -p "Quina es la ruta del directori: " ruta
read -p "Nombre maxim de elements: " nummax

numelem=$(ls -1Al "$ruta" | wc -l | tr -d ' ')

if [ "$numelem" -le "$nummax" ]; then
{
    echo "${green}El numbre d'elements d'aquesta carpeta, NO sobrepasa el limit maxim de: $nummax"
}
else
{
    echo "${red}El numero maxim de la carpeta, $numelem , sobrepasa el  numero maxim de $nummax."
}
fi



