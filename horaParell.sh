#! /bin/sh

# Script que inicialitzi la variable moment=$(date +%F_%T). Imprimir-la per pantalla només si l'hora actual és parell.

moment=$(date +%F_%T)

hour=$(date +%F_%T | sed 's/[- _ :]/ /g' | cut -d ' ' -f4) 

if [ "$hour"%2 == "0" ]; then
    echo "La hora es: "$hora" i es una hora Parell"
else
    echo "La hora no es parell"
fi