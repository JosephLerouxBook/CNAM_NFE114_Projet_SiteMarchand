# CNAM_NFE114_Projet_SiteMarchand

Projet CNAM de l'UE NFE114 dans lequel nous devons réaliser un site marchand.

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

### Du code

- Les lignes commenté de « //TROUBLESHOOT » sont à décommenté s’il y a un souci avec le site afin de voir si le comportement du code est correct.