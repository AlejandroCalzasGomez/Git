#!/bin/bash

echo Buenos días
echo ''

lista=(0 1 2 3 4)

echo ${lista[*]}

echo ${lista[3]}

echo ${#lista[*]}
echo ''

read -p 'Dime un usuario: ' nombre

read -s -p 'Dime la contraseña: ' pass

echo ''

echo $nombre':'$pass
echo ''

echo el parámetro 0 es: $0
echo En el primer parámetro pone $1, en el segundo $2, en el tercero $3 y en el cuarto $4
echo En total hay $# parámetros
echo Los parámetros son $*
lista=($@)
echo También los puedo sacar con la @ y son $lista
echo El tercer valor es ${lista[2]}
echo El resultado del echo anterior es $?
echo El último comando ha sido: $_
echo El ID de proceso del script es $$
echo ''

num1=33
num2=32
if [ $num1 -gt $num2 ]; then
 echo "Es mayor"
elif [ $num1 -eq $num2 ]; then
 echo "Son iguales"
else
 echo "no es mayor"
fi
echo ''

CADENA1="uno"
CADENA2="dos"
CADENA3=""
if [ $CADENA1 = $CADENA2 ]; then
 echo "\$CADENA1 es igual a \$CADENA2"
elif [ $CADENA1 != $CADENA2 ]; then
 echo "\$CADENA1 no es igual a \$CADENA2"
fi
if [ -z $CADENA3 ]; then
 echo "\$CADENA3 esta vacía"
fi
echo ''
