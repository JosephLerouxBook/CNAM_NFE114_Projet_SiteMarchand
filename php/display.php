<?php
    require "connexion.php";
    include "queries.php";

//Fonction affichant le header de la table 
function displayHeader($results){
    $headers = array_keys($results[0]);
    //var_dump($headers); //TROUBLESHOOT
    echo '<table>
            <thead>
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
        </thead>';
}

//Fonction affichant le contenu de la table
function displayContent($results){
    //var_dump($results); //TROUBLESHOOT
    $headers = array_keys($results[0]);
    //var_dump($headers); //TROUBLESHOOT
    echo '<tbody>';
    foreach($results as $result){
        echo '<tr>';

        if(isset($result['id']) == true){
            $id = $result['id'];
            echo '[]';
            echo '<td style="text-align:center">'.$id.'</td>';
        }
        if(isset($result['nom']) == true){
            $nom = $result['nom'];
            echo '<td style="text-align:center">'.$nom.'</td>';
        }
        if(isset($result['diam']) == true){
            $diam = $result['diam'];
            echo '<td style="text-align:center">'.$diam.'</td>';
        }
        if(isset($result['color']) == true){
            $color = $result['color'];
            echo '<td style="text-align:center">'.$color.'</td>';
        }
        if(isset($result['poids']) == true){
            $poids = $result['poids'];
            echo '<td style="text-align:center">'.$poids.'</td>';
        }
        if(isset($result['prixUnitaire']) == true){
            $PU = $result['prixUnitaire'];
            echo '<td style="text-align:center">'.$PU.'€</td>';
        }
        if(isset($result['quantite']) == true){
            $quantite = $result['quantite'];    
            echo '<td style="text-align:center">'.$quantite.'</td>';
        }
        echo '</tr>';
    }
    echo '</tbody>
        </table>';
}

function main($inf){
    $dbcon = dbConnexion();
    if($inf = "outils"){
        $result = tableQuery("main.alesoirtaraudslames", $dbcon);
    }
    else{

    }
    displayHeader($result);
    displayContent($result);
}
//echo($_GET['inf']);
main($_GET['inf']);

?>

