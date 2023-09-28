#!/bin/bash

# Échappez l'opérateur * pour effectuer la multiplication
if [ "$2" = "*" ]; then
    resultat=$(("$1" * "$3"))
else
    resultat=$(expr $1 "$2" $3)
fi

echo $resultat

