#!/bin/bash

read -p "Entrez le premier nombre : " nombre1

read -p "Entrez le deuxième nombre : " nombre2

somme=$((nombre1 + nombre2))

echo "La somme de $nombre1 et $nombre2 est : $somme"
