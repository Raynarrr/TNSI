#!/bin/bash

#install 
sudo apt update
echo -e "%%%%%%%%%%%%%%%%%%%%%%%"
echo -e "On installe git...\n"
echo -e "%%%%%%%%%%%%%%%%%%%%%%%"
sudo apt -y install git
echo -e "Fin d'installation de git...\n\n\n\n"
# echo -e "%%%%%%%%%%%%%%%%%%%%%%%"
# echo -e "On installe filius, Java et tout...\n"
# sudo apt -y install filius
# echo -e "Fin d'installation de filius...\n"
echo -e "%%%%%%%%%%%%%%%%%%%%%%%"
echo -e "On installe postgresql...\n"
echo -e "%%%%%%%%%%%%%%%%%%%%%%%"
sudo apt -y install postgresql
echo -e "Fin d'installation de postgresql...\n\n\n\n"
echo -e "%%%%%%%%%%%%%%%%%%%%%%%"
echo -e "%%%%%%%%%%%%%%%%%%%%%%%"
echo -e "On installe des utilitaires...\n"
echo -e "%%%%%%%%%%%%%%%%%%%%%%%"
sudo apt -y install curl
sudo apt -y install tree
sudo apt -y install asciinema
echo -e "Fin d'installation des utilitaires...\n\n\n\v"


####DEBUT de Config git#####
#remplacer "MoonsieurNSI" par votre "user" github
git config --global user.name "MoonsieuNSI"

#modifier l'email avec votre "email" github
git config --global user.email "patrice.nicolas7@monlycee.net"

git config --global --list

#cle ssh
#modifier l'email avec votre "email" github
ssh-keygen -t ed25519 -C "patrice.nicolas7@monlycee.net"
####FIN de Config git#####


# affiche la clé publique
cat ~/.ssh/id_ed25519.pub
echo -e "\v"

# Sinon on envoie la clé publique sur paste.rs
curl -F "file=@$HOME/.ssh/id_ed25519.pub" https://paste.rs
echo -e "\nCopier le lien précédent dans votre navigateur\n"
echo -e "Copier la clé dans github\n\v"

# local folder
mkdir VM
