#!/bin/sh
maFonction ()
{
        # On test si l'utilisateur a mis 3 parametres
        if [ $# -eq 3 ]
        then
                # on test si le fichier existe
                if [ -f $1 ]
                then
                        #pour chaque ligne dans le fichier passé en parametre
                        for file in $1
                        do
                                #on change les espaces par des points d'exclamat                                   ion
                                sed -i -e 's/'$2'/'$3'/g' $1
                        done
                else
                        echo "le fichier n'existe pas"
                fi

        else
                        echo "usage : ./test1.sh [file] [first character] [secon                                   d character]"
        fi
}

maFonction $1 $2 $3
