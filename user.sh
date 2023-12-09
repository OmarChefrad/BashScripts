username="nom_utilisateur"

# Utilisation de la commande groups
groups $username

# Ou utilisez la commande id
id $username

# Ou la commande w
w -si $username

nom_groupe="nouveau_groupe"

# Utilisation de la commande groupadd
sudo groupadd $nom_groupe

nom_utilisateur="utilisateur"
nom_groupe="groupe"

# Utilisation de la commande gpasswd
sudo gpasswd -a $nom_utilisateur $nom_groupe

# Ou utilisez la commande usermod pour ajouter plusieurs groupes
sudo usermod -aG $nom_groupe1,$nom_groupe2 $nom_utilisateur

nom_utilisateur="utilisateur"
nom_groupe="groupe"

# Utilisation de la commande gpasswd
sudo gpasswd -d $nom_utilisateur $nom_groupe

nom_groupe="groupe"

# Utilisation de la commande groupdel
sudo groupdel $nom_groupe


