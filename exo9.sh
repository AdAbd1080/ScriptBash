#!/bin/bash

# Fonction pour vérifier si un nombre est premier
is_prime() {
    local num=$1
    if [ $num -lt 2 ]; then
        return 1
    fi
    for ((i=2; i*i<=num; i++)); do
        if [ $((num%i)) -eq 0 ]; then
            return 1
        fi
    done
    return 0
}

# Fonction pour générer la liste de nombres premiers jusqu'au nombre spécifié
generate_primes() {
    local limit=$1
    local primes=()
    for ((i=2; i<=limit; i++)); do
        if is_prime $i; then
            primes+=($i)
        fi
    done
    echo "${primes[@]}"
}

# Fonction pour calculer la somme des nombres premiers
sum_primes() {
    local primes=("$@")
    local sum=0
    for prime in "${primes[@]}"; do
        ((sum += prime))
    done
    echo $sum
}

# Demander à l'utilisateur de spécifier un nombre
read -p "Entrez un nombre : " user_input

# Générer la liste de nombres premiers jusqu'au nombre spécifié
prime_list=($(generate_primes $user_input))

# Afficher la liste de nombres premiers
echo "Liste de nombres premiers jusqu'à $user_input : ${prime_list[@]}"

# Calculer et afficher la somme des nombres premiers
sum=$(sum_primes "${prime_list[@]}")
echo "La somme des nombres premiers est : $sum"

