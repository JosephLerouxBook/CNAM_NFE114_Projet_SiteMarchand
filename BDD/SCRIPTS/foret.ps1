Import-Module PSexcel


$ExcelData_foret = Import-XLSX -Path "C:\Users\Joseph\Documents\COURS_CNAM\SIBDD\projetBDD\ExcelToImport\Foret.xlsx"
$ExcelData_Size = $ExcelData_foret.Length;
$i = 0;
$finalAr = @()
#write-host "----------------------- Debut -----------------------"
while ($i -lt $ExcelData_Size){
    $tmp_designation = $ExcelData_foret[$i].DESIGNATION
    $tmp_unite = "la pièce"
    $tmp_quantite = $ExcelData_DisqueTroncMeul[$i].QUANTITES
    $tmp_pu = $ExcelData_DisqueTroncMeul[$i].PU
    $tmp_words = $tmp_designation.Split(' ', 10)
    
    if($tmp_words[1][0] -eq 'A'){
        $tmp_ars = $true
        $tmp_type =$null
        switch($tmp_words[2][0]){
            'q'{
                $tmp_type = "queu"
                switch ($tmp_words[3][1]){
                    'o'{$tmp_soustype = "conique"}
                    'y'{$tmp_soustype = "cylindrique"}
                }
            }
            'c'{$tmp_type = "cylindrique"}
            'h'{$tmp_type = "helicoidal"}
            'c'{$tmp_type = "conique"}
            #'D'{$tmp_diam = $tmp_words[2].Substring(1, $tmp_words[2].Length-1)}
        }


    } 
    else {
        $tmp_ars = $false
    }
    $tmp_designation
    $tmp_Dpos = $tmp_designation.IndexOf("D")
    $tmp_diam = $tmp_designation.Substring($tmp_Dpos+1, 3)



    $object = [PSCustomObject]@{
        ars = $tmp_ars
        diam = $tmp_diam
        type = $tmp_type
        soustype = $tmp_soustype
        unite = $tmp_unite
        quantite = $tmp_quantite
        pu = $tmp_pu
    }
    $finalAr += $object
    $i++
}