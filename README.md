# CNAM_NFE114_Projet_SiteMarchand

Projet CNAM de l'UE NFE114 dans lequel nous devons réaliser un site marchand.
Le compte rendu est dans /DOCUMENTS et la base de donner dans /BDD

## Pré-requis
Pour faire tourner la solutions, vous aurez besoin de : 
- Serveur web, avec :
  - Apache (serveur web)
  - php (interpreter php)
  - MySQL 
Afin de faciliter son installation nous vous conseillons d'installer wamp64.

## Installation 

Afin de faire fonctionner la solution, vous allez devoir installer : 
- La base de donnée
- La solution
### BDD
Sur l'interface de votre serveur, créez une base de donnée "nfe114_sitemarchand" avec le character set en utf8mb4_0900_ai_ci (ou tout autre character set supportant les characteres spéciaux français tel que le 'é')

Ensuite, récupérez "nfe114_sitemarchand.sql" dans /BDD/nfe114_sitemarchand.sql.
Sélectionnez votre base de donnée dans l'interface, et importer le .sql.

❗Si votre serveur de base de donnée n'est pas heberger sur le serveur où est la solution, veuillez modifiez le fichier /php/dbConnexion.php en modifiant la ligne 4 : $serv = "localhost" par $serv = [adresse_ip_du_serveur_SQL]


### Solution

Veuillez mettre l'ensemble des fichier du dossier "NFE114-SiteMarchand.zip" à la racine de votre serveur web. 
Sur wamp, il devrait se trouver dans C:/wamp64/www/ ou là ou vous avez installer votre dossier wamp64/www.
Sur Apache sous ubuntu, dans var/www.


## Utilisation 

### De l'interface
Les fonctionnalités sont pour l'instant relativement limiter : 
- Nous pouvons acceder a la page affichant les bobines en cliquant sur 'bobines' dans la navbar de gauche. ("outils" demande la création d'une fonction adapté)
- Nous pouvons ajouter le nom d'un alesoir taraud ou lame // d'une bobine dans la base de donner depuis "modifier le stock" sur l'index.php.

### Du code

- Les lignes commenté de « //TROUBLESHOOT » sont à décommenté s’il y a un souci avec le site afin de voir si le comportement du code est correct.

Chaque partie est dans un dossier associé. 
On retrouveras : 
- css
  - css-magasin.css : css de l'accueil.
  - css-modif-stock.css : css de la page d'ajout de donnée dans la base de donnée.
- js
  - magasin.js : code lié a l'apparition/disparition de la navbar
- php
  - addToDB.php : Code lié au formulaire d'ajout de donnée dans la BDD
  - connexion.php : Fonction permettant la connexion a la BDD
  - display.php : Fonctions lié a l'affichage des tables html depuis les tables de la BDD
  - queries.php : Fonctions executant les requêtes SQL sur la BDD

ensuite a la racine nous avons 2 pages principales : 
- index.php : page d'acceuil, avec la navbar et le bouton redirigeant vers le formulaire.
- modif-stock.php : formulaire d'ajout de donnée à la BDD.