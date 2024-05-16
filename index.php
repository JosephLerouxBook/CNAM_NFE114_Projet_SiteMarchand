<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>test liaison BDD</title>
</head>
<body>
    <?php 
        require "php/connexion.php";
        include "php/queries.php";
        include "php/display.php";
        $dbcon = dbConnexion();
        $result = tableQuery("main.bobines", $dbcon);
    ?>
    <table>
        <?php
            displayHeader($result);
            displayContent($result);
        ?>
    </table>
</body>
</html>