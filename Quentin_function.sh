#!/bin/sh

mafonction() {
  if [ -f $3 ]
    then
# $1 correspond au caractere a changer
# $2 correspond au caractere change
# $3 correspond au chemin du fichier (ex: /etc/passwd)
      sed "s/$1/$2/g" $3
    else
      echo "le fichier n'existe pas"
  fi
  }
# Appel de ma fonction
mafonction $1 $2 $3

