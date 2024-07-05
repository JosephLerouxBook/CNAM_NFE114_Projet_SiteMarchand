Import-Module PSexcel

$ExcelData_Consommable = Import-XLSX -Path "C:\Users\Joseph\Documents\COURS_CNAM\SIBDD\projetBDD\ExcelToImport\Consommables.xlsx"

$ExcelData_Size = $ExcelData_Consommable.Length;
$i = 0;
$finalAr = @()

while ($i -lt $ExcelData_Size){
    $tmp_nom = $ExcelData_Consommable[$i].Designation
    $tmp_pu = $ExcelData_Consommable[$i].PU
    $tmp_unite = $ExcelData_Consommable[$i].UNITES
    $tmp_quantite = $ExcelData_Consommable[$i].QUANTITES

    $object = [PSCustomObject]@{
        nom = $tmp_nom
        unite = $tmp_unite
        pu = $tmp_pu
        quantite = $tmp_quantite
    }
    $finalAr += $object

    $i++
    # '---------------FinDeBoucle-------------'
}

$finalAr | Export-XLSX -Path ".\Consommable.xlsx" 