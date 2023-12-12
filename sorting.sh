find -name "unsorted*" -exec cat {} \;

find -name "unsorted*" -delete

find -name "unsorted*" -printf "%p: %s ko - user: %u \n"

find /home/umar19/Documents/Code Snipets/bash/unsorted.txt -name "unsorted*" -atime -1

find /home/umar19/Documents/Code Snipets/bash/unsorted.txt -name "unsorted*" -atime +0

find /home/umar19/ -size +4M -size -5M

find /home/ubuntu/ -size +4200k

find -name noms.txt

sudo updatedb

locate MyFile

touch MyFile

cut -d ";" -f 2,1 Etudiant.txt

cut -c -5 noms.txt

cut -c 2-5 noms.txt

uniq -d noms_doublons_tries.txt

uniq -c noms_doublons_tries.txt

cat noms_sans_doublons.txt

wc -l names.txt

wc -w names.txt

wc -c names.txt

wc noms.txt

sort -n nombres.txt

sort -r noms.txt

grep -r "system" Bureau 

grep -H "system" Fichier3

grep -l 'system' Fichier3

grep -c-n-l "system" Fichier3

grep -nv "system" Fichier3


  
