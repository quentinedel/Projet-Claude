 #!/bin/bash
 if [ $# -gt 0 ] #S'il y à plus d'un  paramètre
    then
        if [ -f $1 ] #on regarde si c'est un fichier
        then
            if [ ! -z $2 ] #on regarde si c'est pas vide
            then
                if [ ! -z $3 ] #on regarde si c'est pas vide
                then
                    search=$2 # le caractère cherché 
                    replace=$3 #le caractère de remplacement 
                fi
            else #l'utilisateur ne donne aucun paramètre
                search=":" #On recherche :, par défaut
                replace=" " #On remplace par ESPACE, par défaut
            fi
            sed -i "s/$search/$replace/g" $1 #On remplace le cractère cherché par le remplacement dans le fichier $1
            echo "OK" #On confirme que c'est fait
        fi
    else
            echo "Usage : ./script.sh [chemin du fichier à modifier] [caractère à chercher] [caractère de remplacement]"
        echo "Une utilisation du script sans paramètres utilisera les valeurs par défauts : $search & $replace"
    fi
