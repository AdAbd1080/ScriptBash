#!/bin/bash


read -p "Entrez le nom du fichier à vérifier : " fichier

if [ -e "$fichier" ]; then
    echo "Le fichier '$fichier' existe dans le répertoire courant."
else
    echo "Le fichier '$fichier' n'existe pas dans le répertoire courant."
fi
