#!/bi/nsh
#recuperation des ip
search=$(hostname -I)
#on définis le compteur
ctr=0
#chaque espace = une address ip
for i in 'echo $search |tr " " " "'
do
#+1 pour chaque ip
  ctr=$(($ctr +1))
done
echo "cette machine possède "$ctr"asresse ip définies"
