function Task01 {
    $laiendite_fail = ".\laiendid.txt"
    $tulemuse_fail = ".\random.txt"

    # Kontrollime, kas fail on olemas
    if (-not (Test-Path $laiendite_fail)) {
        Write-Host "Viga: Faili $laiendite_fail ei leitud!" -ForegroundColor Red
        return
    }

    # Loeme laiendid ja võtame tühjad read välja
    $laiendid = Get-Content $laiendite_fail | Where-Object { $_.Trim() -ne "" }
   
    if ($laiendid.Count -eq 0) {
        Write-Host "Viga: Fail $laiendite_fail on tühi!" -ForegroundColor Red
        return
    }

    # Võtame suvalise laiendi ja lisame random.txt faili
    $suvaline = $laiendid | Get-Random
    Add-Content -Path $tulemuse_fail -Value $suvaline
   
    Write-Host "Edukalt lisatud juhuslik laiend '$suvaline' faili random.txt." -ForegroundColor Green
}