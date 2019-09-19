#!/bin/sh
#récupération des lignes commençant par inet dans la commande ip a
res==$(ip a | grep inet)
#Affectation de la valeur 0 aux variables inet et inet6
inet=0
inet6=0

#pour chaque ligne de la variable res 
for line in $res
do
	#si la variable $line est égale à la chaine de caracère inet6 alors
	if [ $line  == "inet6" ]
	then
		#nous faison +1 dans la variable inet6
		let inet6++
	#Sinon si $line est égale à la chaine de caractère intet alors 
	elif [ $line == "inet" ]
	then
		# nous ajoutons +1 à la variable inet
		let inet++
	fi
done
#Afichage des valeurs compteur à l'utilisateur.
echo "Vous avez avez $inet d'adresse IPV4 et $inet6 IPV6"
