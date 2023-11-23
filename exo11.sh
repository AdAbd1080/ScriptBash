#!/bin/bash


echo "Combien de fois souhaitez-vous simuler le lancer de deux dés ?"
read nombre_de_simulations


declare -a resultats


for (( i=0; i<$nombre_de_simulations; i++ )); do
    
    de1=$((RANDOM % 6 + 1))
    de2=$((RANDOM % 6 + 1))

    
    somme=$((de1 + de2))

    
    ((resultats[somme]++))
done


echo "Résultats de la simulation :"
for (( i=2; i<=12; i++ )); do
    echo "Somme $i : ${resultats[i]} occurrences"
done
