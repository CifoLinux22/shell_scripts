#! /bin/bash
echo 'Introduir el nom del fitxer amb la ruta a revisar'
read nomfile
if [ -e  "$nomfile" ]
then
    echo "El fitxer $nomfile pertany al systema d'arxius"
else
    echo "El fitxer $nomfile NO es un fitxer del systema"
fi
