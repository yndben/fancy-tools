#!/bin/bash 
gco(){
	if[ -z "$1" ]; then 
		echo "Usage : gco 'votre message de commit'"
		echo "Exemple : gco 'ajout de la fonction d'installation'"
		return 1
 	fi

	if ! git rev-parse --is-inside-work-tree > /dev/null 2>&1; then
		echo "Erreur : ce repertoire n'est pas un depot git."
		return 1
	fi

	BRANCH=$(git rev-parse --abbrev-ref HEAD)

	MESSAGE="[$BRANCH] $1"
	git commit -m "$MESSAGE"
}
