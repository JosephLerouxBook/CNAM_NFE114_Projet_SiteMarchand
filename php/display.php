<?php
require "connexion.php";
include "queries.php";

// VARIABLE GLOBALE
if($_GET['inf']){
    //echo($_GET['inf']); //TROUBLESHOOT
    $getInfo = $_GET['inf'];
}

// FONCTIONS

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
function displayContentBobines($results){
    //var_dump($results); //TROUBLESHOOT
    echo '<tbody>';
    foreach($results as $result){
        echo '<tr>';

        if(isset($result['id']) == true){
            $id = $result['id'];
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

//Function principale
function main($inf){
    $dbcon = dbConnexion();
    switch ($inf){
        case "outils":
            $result = tableQueryGet("main.alesoirtaraudslames", $dbcon);
            displayHeader($result);
            //displayContentOutils($result);
            break;
        case "bobines":
            $result = tableQueryGet("main.bobines", $dbcon);
            displayHeader($result);
            displayContentBobines($result);
            break;
        //AJOUT DES CASES POUR CHAQUE LIENS
    }

}

// APPEL DU MAIN
main($getInfo);

?>

