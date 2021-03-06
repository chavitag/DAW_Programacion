#!/bin/bash
###	Escribir un algoritmo que solicite dous números enteiros e visualice o resultado do primeiro número elevado ao segundo
#
#	Visualizar "Base:? "
#	Ler base
#	Visualizar "Expoñente:? "
#	Ler exp
#
#	Visualizar "O resultado de " base " elevado a "exp " é: "
#
##	Un número elevado a un espoñente negativo e o inverso do expoñente positivo n^-x  = 1 / n^x
##
#	Si exp < 0
#		Visualizar "1/"
#		exp=-exp
#	FinSi
#
#	resultado=1
#	Mentras exp > 0
#		resultado = resultado * base
#		exp=exp-1
#	Fin-Mentras
#	Visualizar resultado
#

echo -n "Base?: "
read base
echo -n "Espoñente?: "
read exp
echo -n "O resultado de $base elevado a $exp é: "
if [ $exp -lt 0 ]; then
	echo -n "1/"
	exp=$((exp*-1))
fi
resultado=1
while [ $exp -gt 0 ]; do
	resultado=$((resultado*base))
	exp=$((exp-1))
done
echo $resultado
