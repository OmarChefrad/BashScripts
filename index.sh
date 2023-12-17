#!/bin/bash

# Obtient le répertoire du bureau de l'utilisateur propriétaire
bureau_utilisateur="$HOME/Bureau"

# Parcours de chaque fichier dans le répertoire courant
for fichier in *; do
    # Vérifie si le fichier est un fichier ordinaire
    if [ -f "$fichier" ]; then
        # Vérifie si le propriétaire du fichier n'est pas root
        if [ "$(stat -c '%U' "$fichier")" != "root" ]; then
            # Déplace le fichier vers le bureau de l'utilisateur propriétaire
            mv "$fichier" "$bureau_utilisateur"

            # Donne le droit d'exécution à l'utilisateur propriétaire
            chmod +x "$bureau_utilisateur/$fichier"
        fi

        # Obtient l'année de modification du fichier
        annee_modification=$(date -r "$fichier" +"%Y")

        # Obtient la taille du fichier en kilo-octets
        taille_fichier=$(du -k "$fichier" | cut -f1)

        # Vérifie si l'année de modification est inférieure à 2010
        # et si la taille du fichier est inférieure à 50 kilo-octets
        if [ "$annee_modification" -lt 2010 ] && [ "$taille_fichier" -lt 50 ]; then
            # Supprime le fichier
            rm "$bureau_utilisateur/$fichier"
            echo "Fichier supprimé : $bureau_utilisateur/$fichier"
        fi
    fi
done

