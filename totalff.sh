#! /bin/bash

# Script per conèixer, d' una ruta facilitada per paràmetre, la xifra corresponent
# a la suma de directoris i fitxers.

echo "Dona'm una ruta de dades"
read -r ruta

num=$(ls -1 "$ruta" | wc -l | sed 's/ //g')
#num=$(ls -1A "$ruta" | wc -l | sed 's/ //g')
# ls -1A -A all entries excvept ./ and ../
#exclude hidden files (-not -name '.*') (-not -path '*/[@.]*')
total=$(find "$ruta" -maxdepth 1 -type f -not -name '.*' -o -type d -not -name '.*' 2>/dev/null | wc -l | sed 's/ //g')
#numfi=$(find "$ruta" -type f 2>/dev/null | wc -l | sed 's/ //g')
#numfo=$(find "$ruta" -type d 2>/dev/null | wc -l | sed 's/ //g')

echo "The number of files and folders in the rute $ruta is: $num"
echo "Tankyou!"

#sum=$(($numfi + $numfo))
#echo "$sum"
printf 'The number of files and folders in the rute (FIND) "%s" is: %d\n' "$ruta" "$total"
 
