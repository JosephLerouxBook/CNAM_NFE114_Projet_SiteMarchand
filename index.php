<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Site marchand</title>
    <link rel="stylesheet" href="css/css-magasin.css">
</head>
<body>
    <!-- Récuperation des données de la base de données pour afficher l'ensemble des tableaux--> 
    <?php 
        # require "php/connexion.php";
        # include "php/queries.php";
        # include "php/display.php";
        # $dbcon = dbConnexion();
        # $resultBobines = tableQuery("main.bobines", $dbcon);
    ?>

    <div id="mypanel" class="sidepanel">
    <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
    <ul class="menu-main" style="position: static;">
        <li id="view" class="has-submenu is-selected is-expanded">
            <a href="php/display.php?inf=outils">Outils</a>

        </li>


    <li id="services" class="has-submenu">
        <a>Bobines</a>
    </li>
<!--
    <li id="services" class="has-submenu">
        <a>Cartouches d'imprimantes</a>
    </li>

    <li id="services" class="has-submenu">
        <a>Consommables</a>
    </li>

    <li id="view" class="has-submenu is-selected is-expanded">
        <a>Disques troncs, meules</a>

    </li>

    <li id="services" class="has-submenu">
        <a>EPI</a>
    </li>

    <li id="view" class="has-submenu is-selected is-expanded">
        <a>Forets</a>
    </li>

    <li id="view" class="has-submenu is-selected is-expanded">
        <a>Matériel informatique</a>

    </li>

    <li id="view" class="has-submenu is-selected is-expanded">
        <a>Matières</a>

    </li>

    <li id="view" class="has-submenu is-selected is-expanded">
        <a>Papier de verre, toile</a>

    </li>

    <li id="services" class="has-submenu">
        <a>Piles</a>
    </li>

    <li id="services" class="has-submenu">
        <a>Tiges filetées</a>
    </li>
-->
    </div>
    </ul>




    <button class="openbtn" onclick="openNav()">&#9776; Menu</button>
    <script src="js/magasin.js"></script>

    <button class="modifbtn" onclick="location.href = 'modif_stock.html';" id="modifbtn" class="float-left submit-button">Modifier le stock</button>
    <script src="page_web.html"></script>

    <!-- Tableau de index.php : Enlever, Ajout de l'ensemble des tableaux à implementer -->
    <table>
        <?php
            # displayHeader($resultBobines);
            # displayContent($resultBobines);
        ?>
    </table>
</body>
</html>