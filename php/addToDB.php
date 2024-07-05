<?php
require "connexion.php";
include "queries.php";

// RECUPERE LES DONNEE DU 'POST' 
$category = $_POST['category'];
$nom = $_POST['itemName'];
//echo $category; //TROUBLESHOOT

function main($category, $nom){
    $result;
    $dbcon = dbConnexion();
    switch($category){
        case "Outils":
            $result = tableQuerySet($dbcon, "main.alesoirtaraudslames", "nom" ,$nom);
            break;
        case "Bobines":
            $result = tableQuerySet($dbcon, "main.bobines", "nom" ,$nom);
            break;
    }
    if($result == true){
        echo "<script>alert(\"L'ajout a été effectué avec succes.\")</script>";
        header("Location: ../index.php");
    } else {
        echo "<script>alert(\"Problème avec l'ajout dans la base de donnée\")</script>";
    }
}

main($category, $nom);

?>