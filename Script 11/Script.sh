#!/bin/bash

#Usuario y contraseña correcto
UserC="Ubuntu"
PassC="12345"
#Archivo en forma de variable y El texto en caso de que se introduzca la informacion correcta
File="clave1.txt"

#Aqui pide que se introduzca el usuario y contraseña
  echo "Introduce usuario"
  read -t 6 User
#Si no se introduce nada a tiempo el programa se cierra
  if [ -z $User ];
  	then
  		echo -e "\nSe ha excedido el tiempo de comprobacion, disculpe las molestias"
  		exit
  fi
  echo "Introduce contraseña"
  read -t 6 Pass
#Si no se introduce nada a tiempo el programa se cierra
  if [ -z $Pass ];
  	then
  		echo -e "\nSe ha excedido el tiempo de comprobacion, disculpe las molestias"
  		exit
  fi
  echo "Usuario: $User"
  echo "Contraseña: $Pass"
#usuario y la contraseña sean incorrectas dira el mensaje
if [ $User = $UserC ] | [ $Pass = $PassC ];
	then 
		echo -e "\nEl usuario y contraseña son correctos"
		chmod 777 $File
		echo -e "\nBienvenido $User, en que podemos ayudarle?"
	else 
		echo -e "\nEl usuario y/o contraseña son incorrectos"
fi
