<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Site marchand</title>
    <link rel="stylesheet" href="css/css-magasin.css">
</head>
<body>
    <!-- Récuperation des données de la base de données --> 
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
            <ul class="submenu" style="max-height: 185px;">
                <li class="is-selected">
                    <a>Alésoirs</a>
                </li>
                <li>
                    <a>Tarauds</a>
                </li>
                <li>
                    <a>Lames de scie</a>
                </li>
            
            </ul>
        </li>


    <li id="services" class="has-submenu">
        <a>Bobines</a>
    </li>

    <li id="services" class="has-submenu">
        <a>Cartouches d'imprimantes</a>
    </li>

    <li id="services" class="has-submenu">
        <a>Consommables</a>
    </li>

    <li id="view" class="has-submenu is-selected is-expanded">
        <a>Disques troncs, meules</a>
        <ul class="submenu" style="max-height: 185px;">
            <li class="is-selected">
                <a>Meuler</a>
            </li>
            <li>
                <a>Troçonner</a>
            </li>
        </ul>
    </li>

    <li id="services" class="has-submenu">
        <a>EPI</a>
    </li>

    <li id="view" class="has-submenu is-selected is-expanded">
        <a>Forets</a>
        <ul class="submenu" style="max-height: 500px;">
            <li class="is-selected">
                <a>ARS</a>
            </li>
            <li>
                <a>Queue cylindrique</a>
            </li>
            <li>
                <a>Hélicoidal</a>
            </li>
            <li>
                <a>Queue conique</a>
            </li>
            <li>
                <a>A pointer</a>
            </li>
            <li>
                <a>A centrer</a>
            </li>
            <li>
                <a>Autres</a>
            </li>
        </ul>
    </li>

    <li id="view" class="has-submenu is-selected is-expanded">
        <a>Matériel informatique</a>
        <ul class="submenu" style="max-height: 185px;">
            <li class="is-selected">
                <a>Câbles</a>
            </li>
            <li>
                <a>Autres</a>
            </li>    
        </ul>
    </li>

    <li id="view" class="has-submenu is-selected is-expanded">
        <a>Matières</a>
        <ul class="submenu" style="max-height: 500px;">
            <li class="is-selected">
                <a>XC48</a>
            </li>
            <li>
                <a>AU4G</a>
            </li>
            <li>
                <a>Bronze</a>
            </li>
            <li>
                <a>Cuivre</a>
            </li>
            <li>
                <a>ADX Laminé</a>
            </li>
            <li>
                <a>A centrer</a>
            </li>
            <li>
                <a>Acier Doux</a>
            </li>
            <li>
                <a>XC38</a>
            </li>
            <li>
                <a>A60</a>
            </li>
            <li>
                <a>Stub</a>
            </li>
            <li>
                <a>Laiton</a>
            </li>
            <li>
                <a>Autres</a>
            </li>
        </ul>
    </li>

    <li id="view" class="has-submenu is-selected is-expanded">
        <a>Papier de verre, toile</a>
        <ul class="submenu" style="max-height: 185px;">
            <li class="is-selected">
                <a>Feuille</a>
            </li>
            <li>
                <a>Papier</a>
            </li>
            <li>
                <a>Toile</a>
            </li>
        
        </ul>
    </li>

    <li id="services" class="has-submenu">
        <a>Piles</a>
    </li>

    <li id="services" class="has-submenu">
        <a>Tiges filetées</a>
    </li>

    </div>
    </ul>




    <button class="openbtn" onclick="openNav()">&#9776; Menu</button>
    <script src="js/magasin.js"></script>

    <button class="modifbtn" onclick="location.href = 'modif_stock.html';" id="modifbtn" class="float-left submit-button">Modifier le stock</button>
    <script src="page_web.html"></script>

    <!-- Tableau de index.php -->
    <table>
        <?php
            # displayHeader($resultBobines);
            # displayContent($resultBobines);
        ?>
    </table>
</body>
</html>