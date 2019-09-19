#!/bin/sh
#Quentin EDELMANN

#Ce sript affiche le nombre d'IP configuré sur un machine Linux

#J'extrait de la commande "ip a" les adresses ip configurés puis je les comptes
ip a | grep -oE '((1?[0-9][0-9]?|2[0-4][0-9]|25[0-5])\.){3}(1?[0-9][0-9]?|2[0-4][0-9]|25[0-5])' | wc -l



