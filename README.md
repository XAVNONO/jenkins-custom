# jenkins-custom-test

## Objectif
* Création d'une image Jenkins-custom-test contenant :
    - Docker
    - docker-compose
    - Terraform
    - Kubectl
    - Minikube

## Pré-requis
* Avoir une machine linux sur laquelle est installé : 
    - GIT
    - DOCKER
    - DOCKER-COMPOSE 

## Cloner le dépot Github
* A partir de votre workspace lancer cette commande :
```
git clone https://github.com/xavnono/jenkins-custom
```
* Se placer dans le dépot récupéré :
```
cd jenkins-custom
```

## Lancement du conteneur jenkins-custom-xn
* A partir du dossier cloné, se mettre à la racine et lancer la commande :
```
docker-compose up -d --build
```

## Envoyer l'image sur le Hub Docker
* Se connecter au docker hub en commande :
```
docker login --username=<Id Hub docker> 
```
* Tagguer votre image :
```
docker tag <nom de l'image> <Id Hub docker>/<nom de l'image>:latest
```
* Pusher votre images sur le dépôt :
```
docker <Id Hub docker>/<nom de l'image>:latest
```

## Envoyer une image configuré sur le Hub Docker
* Créer l'image d'un conteneur en cours de fonctionnement :
```
docker commit <nom du container> <nom de l'image choisi> 
```
* Pusher ensuite votre images sur le dépôt :
```
docker push <Id Hub docker>/<nom de l'image>:latest
```

## Utiliser et lancer un container depuis une image Hub Docker
* Choisir l'image sur Hub docker et faire la commande suivante :
```
docker pull <Id Hub docker>/<nom_de_l_image>:latest 
```
docker run -d --name <mon_conteneur> <nom_de_l_image>:tag