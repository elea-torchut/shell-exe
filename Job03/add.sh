#!/bin/bash

# Effectuer l'addition en utilisant expr (avec des espaces autour du +)
resultat=$(expr $1 + $2)

# Afficher le résultat
echo "Le résultat de l'addition est : $resultat"

