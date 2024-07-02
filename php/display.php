<?php
//Fonction affichant le header de la table 
function displayHeader($results){
    $headers = array_keys($results[0]);
    //var_dump($headers); //TROUBLESHOOT
    echo '<thead>
            <tr>';
    foreach ($headers as $header){
        //Correction des header
        if($header == "id"){$header = "ID";}
        if($header == "diam"){$header = "Diamètre";}
        if($header == "color"){$header = "Couleur";}
        if($header == "prixUnitaire"){$header = "Prix Unitaire";}
        if($header == "quantite"){$header = "Quantité";}
        echo "<th '>";
        echo ucfirst($header);
        echo "</th>";
    }
    echo '  </tr>
        </thead><br>';
}

function displayContent($results){
    //var_dump($results); //TROUBLESHOOT
    $headers = array_keys($results[0]);
    //var_dump($headers); //TROUBLESHOOT
    echo '<tbody>';
    foreach($results as $result){
        $id = $result['id'];

        $nom = $result['nom'];
        if($nom == "nom"){$nom="Nom";}
        $diam = $result['diam'];
        $color = $result['color'];
        $poids = $result['poids'];
        $PU = $result['prixUnitaire'];
        $quantite = $result['quantite'];

        echo '<tr>';
        echo '<td style="text-align:center">'.$id.'</td>';
        echo '<td style="text-align:center">'.$nom.'</td>';
        echo '<td style="text-align:center">'.$diam.'</td>';
        echo '<td style="text-align:center">'.$color.'</td>';
        echo '<td style="text-align:center">'.$poids.'</td>';
        echo '<td style="text-align:center">'.$PU.'€</td>';
        echo '<td style="text-align:center">'.$quantite.'</td>';
        echo '</tr>';
    }
    echo '</tbody>';
}
?>