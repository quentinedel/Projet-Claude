#!/bin/sh
#Source de la focntion
source Fupdate.sh

echo "Installation des mises à jour et le paquet gnupg"
	#Appel de la fonction d'update/upgrade
	Fupdate
        apt-get -y install gnupg && apt-get -y install apt-transport-https

echo "Demande de clé au repo opennebula"

        wget -q -O- https://downloads.opennebula.org/repo/repo.key | apt-key add -

echo "ajout de la ligne dans le fichier source_list"

        echo "deb https://downloads.opennebula.org/repo/5.8/Debian/9 stable opennebula" > /etc/apt/sources.list.d/opennebula.list

echo "installation du paquet opennebula-node"

        apt --yes install opennebula-node

echo ""
echo ""
echo""

echo "Taper ces commandes sur le noeud 1 après avoir modifié le fichier cd /etc/hosts:"
echo "	su oneadmin ssh-keyscan opennebula kvm_node1 >> /var/lib/one/.ssh/known_hosts"
echo "	scp -rp /var/lib/one/.ssh kvm_node1:/var/lib/one/"
