#!/bin/sh
maFonction ()
{
        # on s'appuie sur le résultat de la commande ip a pour compter le nombre d adresses
        # on stocke le resultat dans une variable
        var=$(ip a)
        # On stocke dans une variable le nombre de fois où le mot inet apparait
        res=$(echo $var | grep -o 'inet' | wc -w)
        # on affiche le resultat
        echo "il y a "$res" adresses IP configurées sur cette machine"
}
maFonction

# dans ce script, nous comptons aussi les adresses ipv6
