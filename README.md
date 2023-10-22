# jenkins-custom+
Création d'une image Jenkins-custom

## Pré-requis

* Avoir une machine linux sur laquelle est installé : 
    - GIT
    - DOCKER
    - DOCKER-COMPOSE 

## Cloner le dépot Github

* Cloner le dépôt : git clone https://github.com/xavnono/jenkins-custom

## Lancement du conteneur jenkins-custom+

* A partir du dossier cloné, se mettre à la racine et lancer la commande :
```
docker-compose up -d --build
```

* Cela permet d'avoir une image de jenkins qui contient Docker (qui nous sera utile pour les actions d'intégration et de déploiement continue) et de lancer un conteneur

* Une fois le conteneur lancé (vérifier qu'il est au statut up), se rendre à l'url : 
```
http://localhost:8555 
```
    pour accéder à l'interface de Jenkins.