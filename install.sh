#!/bin/bash
set -e 

REPO_URL='https://github.com/yndben/fancy-tools.git'
SRC_DIR=~/src/fancy-tools

add_if_missing() {
	grep -qF "$1" ~/.bashrc || echo "$1" >> ~/.bashrc
}

echo "== Installation de fancy-tools =="

TIMESTAMP=$(date +%Y%m%d_%H%M%S)
cp ~/.bashrc ~/.bashrc.bak_$TIMESTAMP
echo "Sauvegarde de ~/.bashrc et ~/.bashrc.bak_$TIMESTAMP"

add_if_missing "source $SRC_DIR/.aliases"
echo ".aliases ajoute à ~/.bashrc"

add_if_missing "source $SRC_DIR/fancy-functions.sh"
echo "fancy-functions.sh ajoute à ~/.bashrc"

add_if_missing 'export "PATH=$HOME/bin:$PATH"'
echo "~/bin ajoute au PATH"

if [ ! -d "$SRC_DIR" ]; then
	mkdir -p ~/src 
	git clone "$REPO_URL" "$SRC_DIR"
	echo "Depot clone dans $SRC_DIR"
else 
	echo "Le depot existe deja dans $SRC_DIR, clonage ignore."
fi 

mkdir -p ~/bin 

cp "$SRC_DIR/bin/updateFancyTools" ~/bin/updateFancyTools
chmod +x ~/bin/updateFancyTools
echo "updtateFancyTools copie dans ~/bin"

echo ""
echo "=== Installation terminée ! ==="
echo "Ouvrez un nouveau terminal ou exécutez : source ~/.bashrc"
