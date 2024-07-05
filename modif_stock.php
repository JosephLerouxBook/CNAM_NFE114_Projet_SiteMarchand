<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ajouter un produit</title>
    <link rel="stylesheet" href="css/css-modif-stock.css">
</head>
<body>
    <div class="form-container">
        <h2>Ajouter un Objet</h2>
        <form id="addItemForm" action="php/addToDB.php" method="post">
            <label for="category">Catégorie :</label>
            <select id="category" name="category">
                <option value="Outils">Outils</option>
                <option value="Bobines">Bobines</option>
                <!--
                <option value="Cartouches d'imprimantes">Cartouches d'imprimantes</option>
                <option value="Consommables">Consommables</option>
                <option value="Disques troncs, meules">Disques troncs, meules</option>
                <option value="EPI">EPI</option>
                <option value="Forets">Forets</option>
                <option value="Matériel informatique">Matériel informatique</option>
                <option value="Matières">Matières</option>
                <option value="Papier de verre, toile">Papier de verre, toile</option>
                <option value="Piles">Piles</option>
                <option value="Tiges filetées">Tiges filetées</option>
                -->
            </select>
            <label for="itemName">Nom de l'objet :</label>
            <input type="text" id="itemName" name="itemName" required>
            <button type="submit" >Ajouter</button>
        </form>
    </div>

    <script>
        function addItem() {
            const category = document.getElementById('category').value;
            const itemName = document.getElementById('itemName').value;

            alert(`Objet "${itemName}" ajouté à la catégorie "${category}"`);
        }
    </script>
</body>
</html>
