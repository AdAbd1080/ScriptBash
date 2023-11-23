#!/bin/bash


echo "Entrez une phrase :"
read phrase


nb_voyelles=0
nb_consonnes=0
nb_espaces=0


voyelles="aeiouAEIOU"


for (( i=0; i<${#phrase}; i++ )); do
    caractere=${phrase:$i:1}

    # Vérifier si le caractère est une voyelle
    if [[ $voyelles == *$caractere* ]]; then
        ((nb_voyelles++))
    # Vérifier si le caractère est une consonne (lettre et pas une voyelle)
    elif [[ $caractere =~ [[:alpha:]] ]]; then
        ((nb_consonnes++))
    # Vérifier si le caractère est un espace
    elif [[ $caractere == " " ]]; then
        ((nb_espaces++))
    fi
done


echo "Nombre de voyelles : $nb_voyelles"
echo "Nombre de consonnes : $nb_consonnes"
echo "Nombre d'espaces : $nb_espaces"
