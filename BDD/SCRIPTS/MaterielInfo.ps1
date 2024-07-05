Import-Module PSexcel

$ExcelData_MatierlInfo = Import-XLSX -Path "C:\Users\Joseph\Documents\COURS_CNAM\SIBDD\projetBDD\ExcelToImport\MaterielInfo.xlsx"
$ExcelData_Size = $ExcelData_AlésoirTaraudsLames.Length;
$i = 0;
$finalAr = @()

while ($i -lt $ExcelData_Size - 1){
    $tmp_m = $null
    $tmp_marque = $null
    $tmp_unite = $null
    $tmp_pu = $null
    $tmp_quan = $null
    $tmp_soustype = $null
    $tmp_micro = $null
    $tmp_dim = $null
    $tmp_designation = $ExcelData_matierlInfo[$i].Designation;
    $tmp_words = $tmp_designation.Split(' ', 4)
    $tmp_type = $tmp_words[0]
    switch($tmp_type){
        "Câble"{
            $tmp_soustype = $tmp_words[1]
            if ($tmp_words[2].Length -eq 3){
                $tmp_m = $tmp_words[2].Substring(0, 2)
            } elseif ($tmp_words[2].length -eq 2){
                $tmp_m = $tmp_words[2].Substring(0, 1)
            } elseif ($tmp_words[2].length -eq 5){
                $tmp_m = $tmp_words[2].Substring(0, 4)
            }
        }
        "VidéoProjecteur" {$tmp_marque = $tmp_words[1]}
        "Pied"{$tmp_soustype = $tmp_words[1]}
        "Rallonge"{
            $tmp_soustype = $tmp_words[1]
            $tmp_m = $tmp_words[2]
        }
        "Chargeur"{$tmp_soustype = $tmp_words[1]}
        "Casque"{
            if($tmp_words[1] -eq "avec"){
                $tmp_micro = $true
            }else {$tmp_micro = $false}
            if ($tmp_words[1] -eq "Stéréo"){$tmp_soustype = $tmp_words[1]}
        }
        "Enceinte"{$tmp_soustype = "PC"}
        "Ecran"{
            $tmp_dim = $tmp_words[1]
            $tmp_marque = $tmp_words[2]
        }
    }
    $tmp_designation
    $tmp_unite = "la piece"
    $tmp_quan = $ExcelData_MatierlInfo[$i].QTS
    $tmp_pu = $ExcelData_MatierlInfo[$i].'PU en €'

    $object = [PSCustomObject]@{
        soustype        = $tmp_soustype
        type            = $tmp_type
        m               = $tmp_m
        micro           = $tmp_micro
        marque          = $tmp_marque 
        dim             = $tmp_dim 
        unite           = $tmp_unite
        prixUnitaire    = $tmp_pu
        quantite        = $tmp_quan
    }
    $finalAr += $object
    $i++
}

$finalAr | Export-XLSX -Path ".\materielInfo.xlsx"
