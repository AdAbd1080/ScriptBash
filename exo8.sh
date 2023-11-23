#!/bin/bash

read -p "Entrez le nombre de fichiers à créer : " nombre_de_fichiers

read -p "Entrez le nom du fichier : " nom_du_fichier

for ((i = 1; i <= nombre_de_fichiers; i++)); do
    nouveau_fichier="${nom_du_fichier}${i}"
    touch "$nouveau_fichier"
    echo "Fichier créé : $nouveau_fichier"
done

echo "Opération terminée."
