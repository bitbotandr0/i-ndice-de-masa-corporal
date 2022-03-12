#!/bin/bash
pkg install cowsay || apt-get install cowsay
pkg install bc || apt-get install bc
                                 >                      cowthink -f ghostbusters "Phantom X"

echo  "Bienvenid@ a imc.edad.sh ver2.0"
sleep 0.5

echo "calcularé la edad o índice de masa corporal" 

sleep 0.5


echo "según los datos que me proporciones"

sleep 1



clear

opc=0

while [[ $opc -le 3 ]]; do

echo -e "\e[36m1) Calcular la edad \e[0m"
echo -e "\e[33m2) Calculadora imc \e[0m"
echo -e "\e[31m3) Salir\e[0m"
read -p "seleccione del [1 al 3 ] " opc

case $opc in

      1) clear

      echo " hola , calcularé la edad"
      sleep 1

read -p "ingresa tu año de nacimiento : " YEAR
read -p "ingresa tu mes de nacimiento : " Month
read -p "ingresa tu día de nacimiento : " Day
EDAD=$(($(date +%Y) -$YEAR))
if [ $(date +%m) -lt  $Month ]; then
        EDAD=$(($EDAD-1))
elif  [ $(date +%m) -eq  $Month -a $(date +%d) -lt $Day ]; then
EDAD=$(($EDAD-1))
fi
echo tu edad es $EDAD años

      ;;

      2) clear

echo
echo "IMC";
echo
echo "------------------------";
echo
if [ $# -eq 1 ] ; then
if [ $1 = "-h" ] ; then
echo -e "IMC es un simple script que recopila sus datos, calcula su Índice de masa corporal (imc) e informa si usted está en el peso ideal o no."
echo
echo -e "Su uso es muy simple. \nDigite su nombre, y luego digité  [enter]. \nDigite su peso en KG, y de [enter]. \nahora, digite su altura en metros , y de [enter]. \nEx.: 1.80 ou 1.65 \nAparecerá su IMC y su situación."
echo
else
echo "Parâmetro desconocido."
fi
else
echo "Digite el nombre de la persona:"
read nombre
echo
echo "Digite el peso de la persona en KG (ex.: 70):"
read peso
echo
echo "Digite la altura de la persona en metros (ex.: 1.80):"
read altura
echo
imc=`echo "scale=2; $peso / ( $altura ^ 2 )" | bc -l`
nimc=`echo "scale=2; $peso / ( $altura ^ 2 )" | bc -l | sed 's/\.//'`
if [ $nimc -lt 1700 ] ; then
echo "Cuidado! $nombre está muy abajo del peso"
elif [ $nimc -ge 1700 ] && [ $nimc -le 1849 ] ; then
echo "$nombre está abajo del peso"
elif [ $nimc -gt 1849 ] && [ $nimc -le 2499 ] ; then
echo "felicitaciones! $nombre está dentro del peso ideal"
elif [ $nimc -gt 2499 ] && [ $nimc -le 2999 ] ; then
echo "$nombre está encima del peso ideal"
elif [ $nimc -gt 2999 ] && [ $nimc -le 3499 ] ; then
echo "Cuidado! $nombre está con Obesidad nível I"
elif [ $nimc -gt 3499 ] && [ $nimc -le 3999 ] ; then
echo "Cuidado! $nombre está con Obesidad nível II (severa)."
elif [ $nimc -gt 3999 ] ; then
echo "Cuidado! $nombre está com Obesidadd nível III (mórbida)."
else
echo "Error"
fi
echo "con un IMC igual a $imc"
echo
fi

      ;;

      3) clear

         exit 1

      ;;


      *) clear

echo "ups ,en serio es tan díficil?"
sleep 1

echo "la pantalla se bloqueará hasta que digite bien"

pkg install cmatrix

cmatrix



esac

done
