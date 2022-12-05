# Crear Una funció que ens digui si una variable concreta ja es troba
# definida com a variable d'entorn.
# La funcio quedara definida deintre d'un script

#! /bin/sh

echo "What is the variable that find?"
read var

findenv()
#This funtion needs an atribute wich is the one to be searched as env variable
{
env | grep -w "$1" > /dev/null 2> /dev/null # bit-bucket (/dev/null)
result=$?
 
if [ $result = "0" ];
then
echo "Variable encontrada"
else
echo "Variable no encontrada"
fi
}

#. findenv
findenv $var