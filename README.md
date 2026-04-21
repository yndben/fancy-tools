# fancy-tools

Ensemble de scripts Shell pour automatiser la configuration d'un environnement de devellopement Git.



## Prequises

- OS : Linux
- Git installé ('git --version')
- Bash ('/bin/bash')
- Un compte Github

## Installation
```bash
# 1. Cloner le debot 
git clone https://github.com/yndben/fancy_tools.git ~/src/fancy_tools
cd ~/src/fancy_tools

# 2. Lancer le script d'installation 
bash install.sh

# 3. Reecharger le terminal
source ~/.bashrc

```

## Utilisation 

### Alias Git Disponible

`gss` = `git status`
`gpl` = `git pull`
`gpu` = `git push`
`gap` = `git add .`

### Fonction `gco`
Effectue un commit en ajoutant automatiquement le nom de la branche en prefixe:

```bash
gco 'ajout de la fonction d'installation'

```

### Mise à jour des outils

```bash
updateFancyTools
```

##Structure de projet 
```
fancy-tools/
|-- .aliases            #Alias Git (gss, gpl, gpu, gap)
|-- fancy_functions.sh  #Fonction gco (commit avec prefixe)
|-- install.sh          #Script d'installation automatise 
|-- bin/
|    \--- updateFancyTools #Script de mis a jour depuis GitHub
|
|-- README.md           #Documentation du projet 

```
