#Install-Module -Name ImportExcel
Import-Module PSexcel


$ExcelData_DisqueTroncMeul = Import-XLSX -Path "C:\Users\Joseph\Documents\COURS_CNAM\SIBDD\projetBDD\ExcelToImport\DisqueTroncMeul.xlsx"
$ExcelData_Size = $ExcelData_DisqueTroncMeul.Length;
$i = 0;
$finalAr = @()
#write-host "----------------------- Debut -----------------------"
while ($i -lt $ExcelData_Size){
    $tmp_designation = $ExcelData_DisqueTroncMeul[$i].DESIGNATION
    $tmp_dOm = $tmp_designation[0]
    $tmp_words = $tmp_designation.Split(' ', 10)
    #$tmp_nom
    if ($tmp_dOm -eq 'D') {
        $tmp_dOm = "Disque"
        $tmp_plate = $null
        if ($tmp_words[2][0] -eq 'm') {
            $tmp_nom = "a meuler"
        }elseif ($tmp_words[2][0] -eq 't'){
            $tmp_nom = "a tronconner"
        }

        $nbrs = $tmp_words[3].split('x', 3)
        $tmp_diam = $nbrs[0]
        $tmp_epai = $nbrs[1]
        $tmp_alesage = $nbrs[2]

        if ($tmp_words[4] -ne $null){
            if ($tmp_words[4][0] -eq 'n'){
                $tmp_fer = $false
            }elseif ($tmp_words[4][0] -eq 'f'){
                $tmp_fer = $true
            }
        }else {$tmp_fer = $null}

    }elseif ($tmp_dOm -eq 'M') {
        $tmp_dOm = "Meule"
        $tmp_fer = $null

        if ($tmp_words[1][0] -eq 'p'){
            $tmp_plate = "plate"
            $nbrs = $tmp_words[2].Split('x', 3)
            $tmp_diam = $nbrs[0]
            $tmp_epai = $nbrs[1]
            $tmp_alesage = $nbrs[2]
            if ($tmp_words[4][0] -eq 't'){
                $tmp_nom = "a tronconner"
            }elseif ($tmp_words[4][0] -eq 'm'){
                $tmp_nom = "a meuler"
            }
        } else {
            $tmp_plate ="a moyeu deporte"
            $nbrs = $tmp_words[4].Split('x', 3)
            $tmp_diam = $nbrs[0]
            $tmp_epai = $nbrs[1]
            $tmp_alesage = $nbrs[2]
            if ($tmp_words[6][0] -eq 't'){
                $tmp_nom = "a tronconner"
            }elseif ($tmp_words[6][0] -eq 'm'){
                $tmp_nom = "a meuler"
            }
        }

    }

    $tmp_unite = $ExcelData_DisqueTroncMeul[$i].UNITES
    $tmp_quantite = $ExcelData_DisqueTroncMeul[$i].QUANTITES
    $tmp_pu = $ExcelData_DisqueTroncMeul[$i].PU
    $object = [PSCustomObject]@{
        dom = $tmp_dOm
        mot = $tmp_nom
        diam = $tmp_diam
        epais = $tmp_epai
        alesa = $tmp_alesage
        fer = $tmp_fer
        plate = $tmp_plate
        unite = $tmp_unite
        quantite = $tmp_quantite
        pu = $tmp_pu
    }
    $finalAr += $object
    #$ExcelData_DisqueTroncMeul[$i].DESIGNATION
    #write-host "dOm = " $tmp_dOm " `nMeule ou tron = " $tmp_nom  "`nDiametre =" $tmp_diam "`nEpaisseur =" $tmp_epai "`nAlesage =" $tmp_alesage "`nFerreux? =" $tmp_fer "`nPlate?=" $tmp_plate "`nQuantite =" $tmp_quantite "`nUnite =" $tmp_unite "`nPrix unitaire = " $tmp_pu
    #write-host "----------------------- FIN -----------------------"
    $i++
}

$finalAr | Export-XLSX -Path ".\DisqueTroncMeul.xlsx"
