#!/bin/bash

read -p "Veuillez entrer un nom de fichier : " nom_fichier

read -p "Voulez-vous créer le fichier $nom_fichier ? (oui/non) : " confirmation

if [ "$confirmation" == "oui" ]; then
    # Créer le fichier
    touch "$nom_fichier"
    echo "Le fichier $nom_fichier a été créé."
else
  
    echo "Opération annulée. Aucun fichier n'a été créé."
fi
