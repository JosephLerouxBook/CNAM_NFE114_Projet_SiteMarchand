#Install-Module -Name ImportExcel
Import-Module PSexcel
$pathToXLSX = "C:\Users\Joseph\Documents\COURS_CNAM\SIBDD\projetBDD\Magasin_HB_2022.xlsx"
$pathToCSV = "C:\Users\Joseph\Documents\COURS_CNAM\SIBDD\projetBDD\Magasin_HB_2022.csv"

$ExcelData_AlésoirTaraudsLames = Import-XLSX -Path "C:\Users\Joseph\Documents\COURS_CNAM\SIBDD\projetBDD\ExcelToImport\AlésoirTaraudsLames.xlsx"
#$ExcelData_Bobines = Import-XLSX -Path "C:\Users\Joseph\Documents\COURS_CNAM\SIBDD\projetBDD\ExcelToImport\Bobines3D.xlsx"
#$ExcelData_Consommable = Import-XLSX -Path "C:\Users\Joseph\Documents\COURS_CNAM\SIBDD\projetBDD\ExcelToImport\Consommables.xlsx"
#$ExcelData_DisqueTroncMeul = Import-XLSX -Path "C:\Users\Joseph\Documents\COURS_CNAM\SIBDD\projetBDD\ExcelToImport\DisqueTroncMeul.xlsx"
#$ExcelData_Cartouches = Import-XLSX -Path "C:\Users\Joseph\Documents\COURS_CNAM\SIBDD\projetBDD\ExcelToImport\Cartouches.xlsx"
$ExcelData_EPI = Import-XLSX -Path "C:\Users\Joseph\Documents\COURS_CNAM\SIBDD\projetBDD\ExcelToImport\EPI.xlsx"
#$ExcelData_foret = Import-XLSX -Path "C:\Users\Joseph\Documents\COURS_CNAM\SIBDD\projetBDD\ExcelToImport\Foret.xlsx"
#$ExcelData_MatierlInfo = Import-XLSX -Path "C:\Users\Joseph\Documents\COURS_CNAM\SIBDD\projetBDD\ExcelToImport\MaterielInfo.xlsx"
$ExcelData_Matiere = Import-XLSX -Path "C:\Users\Joseph\Documents\COURS_CNAM\SIBDD\projetBDD\ExcelToImport\Matiere.xlsx"
$ExcelData_Papier = Import-XLSX -Path "C:\Users\Joseph\Documents\COURS_CNAM\SIBDD\projetBDD\ExcelToImport\Papier.xlsx"
$ExcelData_Piles = Import-XLSX -Path "C:\Users\Joseph\Documents\COURS_CNAM\SIBDD\projetBDD\ExcelToImport\Piles.xlsx"
$ExcelData_Tiges = Import-XLSX -Path "C:\Users\Joseph\Documents\COURS_CNAM\SIBDD\projetBDD\ExcelToImport\Tiges.xlsx"


#Traitement AlésoirTaraudsLames
#$designation = $ExcelData_AlésoirTaraudsLames | Select-Object Designation;
$ExcelData_Size = $ExcelData_AlésoirTaraudsLames.Length;
$i = 0;
#$j = 0;


$finalAr = @()
#$Alésoir = New-Object -TypeName psobject


while ($i -lt $ExcelData_Size - 1){
    $tmp_designation = $ExcelData_AlésoirTaraudsLames[$i].Designation;
    if($tmp_designation[0] -eq "T" -and $tmp_designation[1] -eq "a") {
        $tmp_nom = "Tarauds"
        $tmp_embout = "Machine"
        $tmp_queu = $null
        $tmp_ars = $null
        $tmp_diam = $tmp_designation.Substring(16, 1)
        $tmp_diam
        if ($tmp_diam -eq 'M'){
            $tmp_diam = $tmp_designation.substring(($tmp_designation.IndexOf('M')-1)+1)
         #   $tmp_diam
        }
        else {
            $tmp_diam = $tmp_designation.Substring(($tmp_designation.IndexOf('1')), 6)
            
            if ($tmp_designation.Substring($tmp_designation.length - 1) -eq 'o'){
                $tmp_iso = $true
            } else {$tmp_iso = $false}
        }
    }
    if($tmp_designation[0] -eq "A"){
        $tmp_nom = "Alésoir";
        $tmp_embout = $tmp_designation.Substring(8, 1);
        $tmp_iso = $null
        if ($tmp_embout -eq 'm'){
            $tmp_embout = "Machine";
            $tmp_queu = $tmp_designation.Substring(16, 1);
            if($tmp_queu -eq 'q'){
                $tmp_queu = $true
                $tmp_diam = $tmp_designation.Substring(28, 1);
                $tmp_ars = $tmp_designation.Substring($tmp_designation.Length-1, 1)
                if ($tmp_ars -eq 'S'){
                    $tmp_ars = $true
                } 
                else {$tmp_ars = $false}
            }
            else{
                $tmp_queu = $false
                $tmp_diam = $tmp_designation.Substring(17, 2);
                $tmp_ars = $tmp_designation.Substring($tmp_designation.Length-1, 1)
                if ($tmp_ars -eq 'S'){
                    $tmp_ars = $true
                } 
                else {$tmp_ars = $false}
            }
        }
        elseif($tmp_embout -eq 'e'){
            $tmp_embout = "Embout Machine";
            $tmp_queu = $tmp_designation.Substring(23, 1);
            if($tmp_queu -eq 'q'){
                $tmp_queu = $true
                $tmp_diam = $tmp_designation.Substring(35, 1);
            }
            else{
                $tmp_queu = $false
                $tmp_diam = $tmp_designation.Substring(24, 1);
            }
        }
    }
    if($tmp_designation[0] -eq "L"){
        $tmp_nom = "Lames de scie"
        $tmp_ars = $null
        $tmp_queu = $null
        $tmp_iso = $null
        $tmp_embout = $tmp_designation.Substring(15, 1)
        if ($tmp_embout -eq 'a') {
            $tmp_embout =  'à metaux'
            $tmp_diam = $tmp_designation.Substring(21+1)
        }
        else {
            $tmp_embout = 'Machine'
            $tmp_diam = $tmp_designation.Substring(22+1)
        }
    }
    $tmp_pu = $ExcelData_AlésoirTaraudsLames[$i].'PU en €'
    $tmp_quan = $ExcelData_AlésoirTaraudsLames[$i].QUANTITES
    $tmp_unite = "La pièce"
    $object = [PSCustomObject]@{
        nom             = $tmp_nom
        embout          = $tmp_embout
        queu            = $tmp_queu
        diam            = $tmp_diam
        ars             = $tmp_ars
        unite           = $tmp_unite
        prixUnitaire    = $tmp_pu
        quantite        = $tmp_quan
        iso             = $tmp_iso

    }
    $finalAr += $object
    
    $i++;
}

$finalAr | Export-XLSX -Path ".\AlésoirTaraudsLames.xlsx"
