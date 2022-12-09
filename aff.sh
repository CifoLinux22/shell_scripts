# Script per saber si un fitxer amb la seva ruta, introduït per teclat existeix o no.

#! /bin/bash

#read -p "Introduce la ruta: " nomruta
echo -e "Introduir el nom del fitxer amb la ruta a revisa\n"
read  -r nomruta
if [ -e  "$nomruta" ]
then
    echo "El fitxer $nomruta pertany al systema d'arxius"
else
    echo "El fitxer $nomruta NO es un fitxer del systema"
fi
