<?php
//Fonction recuperant toute les informations d'une table
function tableQueryGet($table, $conn){
    $exec = $conn->prepare("SELECT * FROM `$table`");
    $exec->execute();
    $result = $exec->fetchAll(PDO::FETCH_ASSOC); //PDO::FETCH_COLUMN, 0
    //print_r($result); //TROUBLESHOOT
    return $result;
}

function tableQuerySet($conn, $table, $col, $newValue){
    $exec = $conn->prepare("INSERT INTO `$table` ($col) VALUES (\"$newValue\")"); //Ajout des valeurs quand formulaire auras plus d'input
    if($exec->execute()){
        return true;
    } else { 
        return false;
    }
}
?>


