#Créer un utilisateur ‘User1’ dans le groupe Info avec un dossier personnel : ‘/home/User1’, un shell :
#bash et un UID : 4005
sudo useradd -m -s /bin/bash -g Info -u 4005 User1
# Créer l'arborescence /home/User1/Bureau/Examen/
mkdir -p /home/User1/Bureau/Examen/
# Créer le fichier Question.txt
touch /home/User1/Bureau/Examen/Question.txt
# Renommer le fichier en Exercice1.txt
mv /home/User1/Bureau/Examen/Question.txt /home/User1/Bureau/Examen/Exercice1.txt
#Chercher tous les fichiers dont le nom comporte « Exercice » qui ont été créés la semaine dernière avec
#une taille ne dépassant pas 50 octets
find /chemin/du/dossier -type f -name "*Exercice*" -ctime -7 -size -50c
#Trouver tous les fichiers du bureau contenant la chaine "Question" sans respecter la casse et en
#affichant le numéro de ligne et le nom du fichier
grep -inr "/home/User1/Bureau/" -e "Question"
Afficher tous les fichiers du bureau d’une façon formatée montrant le chemin du fichier, sa taille, son
utilisateur

Pour effectuer les différentes opérations que vous avez mentionnées, vous pouvez utiliser les commandes système de Linux. Voici comment accomplir chacune des tâches :

### 6) Afficher tous les fichiers du bureau de manière formatée :

```bash
ls -l /home/User1/Bureau/
```

### 7) Afficher les trois fichiers les plus grands (en taille) dans le bureau :

```bash
du -h /home/User1/Bureau/* | sort -rh | head -n 3
```

### 8) Changer les droits d’accès aux fichiers scripts du bureau pour qu’ils s’exécutent seulement par leurs propriétaires :

```bash
chmod u+x /home/User1/Bureau/*.sh
```

### 9) Changer le propriétaire des fichiers scripts du bureau par l’utilisateur "User2" du groupe "Admin" :

```bash
sudo chown User2:Admin /home/User1/Bureau/*.sh
```

### 10) Permettre à l’utilisateur "User1" d’exécuter les scripts du bureau en utilisant l’ACL :

```bash
setfacl -m u:User1:rx /home/User1/Bureau/*.sh
```

### 11) Mettre "User1" dans le groupe "Admin" et effacer tous les ACL :

```bash
sudo usermod -aG Admin User1
setfacl -b /home/User1/Bureau/*.sh
```

Assurez-vous d'adapter ces commandes en fonction de votre configuration spécifique. Notez que certaines de ces commandes nécessitent des droits d'administration (`sudo`). Assurez-vous d'avoir les droits nécessaires avant d'exécuter ces commandes.
