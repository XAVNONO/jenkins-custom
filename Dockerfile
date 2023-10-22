# Image Officielle de Jenkins (dernière version)
FROM jenkins/jenkins:lts

# Utilisateur actif dans le container docker
USER root

# Installation des mises à jour packages
RUN apt-get update -qq \
    && apt-get install -qqy apt-transport-https ca-certificates curl gnupg2 software-properties-common

# Téléchargement de la clé GPG du référentiel de docker 
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
# Ajoute le référentiel Docker au fichier de configuration des sources APT 
RUN add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"

# Mises à jour des paquets et Installation de Docker
RUN apt-get update  -qq \
    && apt-get -y install docker-ce

# Ajoute l'utilisateur Jenkins au groupe docker pour communication avec le daemon docker    
RUN usermod -aG docker jenkins

# Installation de docker-compose
RUN apt install docker-compose