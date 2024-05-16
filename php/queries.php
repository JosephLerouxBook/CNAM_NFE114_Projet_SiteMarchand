<?php
//Fonction recuperant toute les informations d'une table
function tableQuery($table, $conn){
    $query = "SELECT * FROM `$table`";
    //$res = $conn->query($query);
    $exec = $conn->prepare("SELECT * FROM `$table`");
    $exec->execute();
    $result = $exec->fetchAll(PDO::FETCH_ASSOC); //PDO::FETCH_COLUMN, 0
    //print_r($result); //TROUBLESHOOT
    return $result;
}



?>


