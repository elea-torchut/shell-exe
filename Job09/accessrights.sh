#!/usr/bin/bash

# Chemin vers le fichier csv

csv_file=~/Jobs/Job09/Shell_Userlist.csv

# Lecture du fichier

while IFS=, read -r id full_name passwd status
do 
	# Changement de l'espace en tiret
	username=$(echo "$full_name" | tr ' ' '_')
	
	# Ajout de l'utilisateur
	sudo useradd "$username"

	# Ajout des administrateur dans le sudo 
	if [ "$status" == "admin" ]; then
		usermode -aG sudo "$username"
	fi
done < "$csv_file"
