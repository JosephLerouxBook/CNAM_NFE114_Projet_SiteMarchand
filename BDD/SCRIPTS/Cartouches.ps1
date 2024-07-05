Import-Module PSexcel
$ExcelData_Cartouches = Import-XLSX -Path "C:\Users\Joseph\Documents\COURS_CNAM\SIBDD\projetBDD\ExcelToImport\Cartouches.xlsx"


$ExcelData_Size = $ExcelData_Cartouches.Length;
$i = 0;
$finalAr = @()

while ($i -lt $ExcelData_Size){
    $tmp_secteur = $ExcelData_Cartouches[$i].secteur
    $tmp_machine = $ExcelData_Cartouches[$i].machine
    $tmp_ref = $ExcelData_Cartouches[$i].'Ref Cartouches'
    $tmp_pu = $ExcelData_Cartouches[$i].'Prix TTC'
    $tmp_quan = $ExcelData_Cartouches[$i].Stock

    $tmp_marque = $tmp_machine.Substring(0, $tmp_machine.IndexOf(' '))
    $tmp_machine = $tmp_machine.Substring($tmp_machine.IndexOf(' ')+1)
    
    $object = [PSCustomObject]@{
        secteur = $tmp_secteur
        quantite = $tmp_quan
        pu = $tmp_pu
        modele = $tmp_machine
        marque = $tmp_marque
        ref = $tmp_ref
    }
    $finalAr += $object
    
    $i++
}

$finalAr | Export-XLSX -Path ".\Cartouches.xlsx" 