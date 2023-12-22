#! /bin/bash
users=$(cut -d ":" -f 3 index | sort |uniq )
for user in $users
do
if [[ $user != root ]]
then
fichiers=$(grep "$user:" index | awk -F ":" '{print $2"/"$1}')
for fichier in $fichiers
do
mv $fichier /home/$user/Desktop
fichier=$(echo $fichier | cut -d "/" -f 5)
chmod u+x /home/$user/Desktop/$fichier
annee=$(grep -E "^$fichier" index | cut -d "/" -f 6)
taille=$(grep -E "^$fichier" index | cut -d ":" -f 4)
if [[ $annee -lt 2019 || $taille -lt 50 ]]
then
rm /home/$user/Desktop/$fichier
fi
done
fi
