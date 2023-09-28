if command -v apt-get &>/dev/null; then
	sudo apt-get update && sudo apt-get upgrade -y
elif command -v yum &>/dev/null; then
	sudo yum update -y
else 
	echo "aucun gestionnaire de paquets compatible trouvé."
	exit 1
fi
