sudo -i; cd~
mkdir -p SMI/S3/Examens ; touch SMI/S3/Examens/ResultatsSE ; nano SMI/S3/Examens/ResultatsSE
rm -R SMI
find -name E*s -size +15k -size -30k
grep -ri "SMI" Bureau
find -atime +29 -delete
Sort Etudiants | uniq

chmod 751 Etudiants.txt
setfacl -m u:user4 :r-x Etudiant.txt
usermod -g Groupe1 user4 Etudiants.txt

AMRANI Hassan : 12/01/1998 : SMI : 12,5 13,25 14,75 18,5 8,25
MANAR Ilham : 25/04/1999 : SMI : 09,5 12,00 10,5 19,00 17,751

cut -d ":" -f 1 Etudiant.txt | cut -d ' ' -f 2
grep ':SMI:' Etudiant.txt| cut -d ' ' -f 1 
grep ':SMI:' Etudiant.txt| cut -d ':' -f 1,2
tr ':' '|' < Etudiant.txt

#!/bin/bash 
Rep=$1 
nbr Info=0
nbrTotal=0
for file in $Rep/*
  do 
if [ -f $file ];then
nbrInfo=$(($nbrInfo+
$(grep 'Informatique' $file|head -1|wc -l)))
nbrTotal=$(($nbrTotal+1))
fi
done
echo $((($nbrInfo*100)/$nbrTotal))"%"


