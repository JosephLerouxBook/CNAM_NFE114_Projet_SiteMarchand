<?php
//Fonction de connexion a la base de donnée.
function dbConnexion(){
    $serv = "localhost";
    $username = "root";
    $password = "";
    try{
        $conn = new PDO("mysql:host=$serv; dbname=nfe114_sitemarchand", $username, $password);
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        //echo "connexion réussie"; //TROUBLESHOOT
        return $conn;
    }
    catch(PDOException $e){
        //echo "Erreur : ".$e->getMessage(); //TROUBLESHOOT
        echo "Problèmes de connexion a la base de donnée. Contacter l'administrateur du site.";
    }
}

?>