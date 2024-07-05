Import-Module PSexcel

$ExcelData_Bobines = Import-XLSX -Path "C:\Users\Joseph\Documents\COURS_CNAM\SIBDD\projetBDD\ExcelToImport\Bobines3D.xlsx"

$ExcelData_Size = $ExcelData_Bobines.Length;
$i = 0;
$finalAr = @()

while ($i -lt $ExcelData_Size){
    $tmp_designation = $ExcelData_Bobines[$i].Designation
    $firstSpace = $tmp_designation.IndexOf(' ')
    $lastSpace = $tmp_designation.LastIndexOf(' ')
   
    #$test
    if ($tmp_designation[1] -eq 'V'){
        $tmp_nom = 'PVA'
        $tmp_diam = $tmp_designation.Substring($firstSpace+1, 4)
    }
    else {
        $tmp_nom = 'PLA'
        $tmp_diam = $tmp_designation.Substring($firstSpace+1, 4)
    }
    #poids
    $tmp_poids = $tmp_designation.Substring(11, 3)
    $tmptmp = $tmp_poids[1]
    $tmplen = $tmp_poids.Length 
    $tmp_poids = $tmp_poids -replace "[^0-9]" , ''
    if ($tmptmp -eq ',') { 
        $tmp_poids = $tmp_poids.Insert(1, ',')
    }elseif($tmptmp = 'K') {
        $tmp_poids = $tmp_poids[0]
    }
    $tmplen = $tmp_poids.Length
    #Color
    if (($tmp_designation.Length -eq 24) -Or ($tmplen -ne 1)) {
        $tmp_color = $tmp_designation.Substring(17.1)
    }else {
        $tmp_color = $tmp_designation.Substring(15.1)
    }

    $tmp_quantite = $ExcelData_Bobines[$i].'QUANTITE'
    $tmp_pu = $ExcelData_Bobines[$i].'PRIX UNITAIRE'
    $tmp_nom
    $tmp_diam
    $tmp_color

    write-host '---------------FinDeBoucle-------------'
    $object = [PSCustomObject]@{
        nom         = $tmp_nom
        diam        = $tmp_diam
        color       = $tmp_color
        poids       = $tmp_poids
        pu          = $tmp_pu
        quantite    = $tmp_quantite

    }
    $tmp_poids
    write-host '--------------------------'
    $finalAr += $object

    $i++
}

$finalAr | Export-XLSX -Path ".\Bobines.xlsx" -ClearSheet