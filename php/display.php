<?php
//Fonction affichant le header de la table 
function displayHeader($results){
    $headers = array_keys($results[0]);
    //var_dump($headers); //TROUBLESHOOT
    echo '<thead>
            <tr>';
    foreach ($headers as $header){
        echo "<th>";
        echo $header;
        echo "</th>";
    }
    echo '  </tr>
        </thead><br>';
}

function displayContent($results){

}
?>