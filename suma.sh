#!/bin/bash

declare -a numeros=(1 2 3 4 5)
suma=0

for num in "${numeros[@]}"
do
	suma=$((suma+num))
done
echo "$suma"
#echo "${numeros[2,4]}"
echo $((numeros[2]+numeros[4])) 


#El signo de pesos mand a llamara la variable.
#Entre llaves refiere a que es un arreglo.
#Entre corchetes refiere al nmeor que vamos a utilizar
#Doble parentesis significa que es una suma aritmetica, si solo se coloca 1 parentesis concatena (une) el valor de la variable.
