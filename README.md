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
docker login --username=xavnono 
```
* Tagguer votre image :
```
docker tag jenkins-custom-xn xavnono/jenkins-custom-xn:latest
```
* Pusher votre images sur le dépôt :
```
docker push xavnono/jenkins-custom-xn:latest
```

## Envoyer une image configuré sur le Hub Docker
* Créer l'image d'un conteneur en cours de fonctionnement :
```
docker commit jenkins-custom jenkins-param-test 
```
* Pusher ensuite votre images sur le dépôt :
```
docker push xavnono/jenkins-param-test:latest
```
