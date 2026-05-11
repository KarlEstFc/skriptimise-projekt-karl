function Task02 {
    param ([Parameter(Mandatory=$true, HelpMessage="Sisesta otsitav laiend")]
        [string]$Laiend
    )

    $tulemuse_fail = ".\random.txt"

    if (-not (Test-Path $tulemuse_fail)) {
        Write-Host "Viga: Faili random.txt ei leitud. Käivita enne Task01!" -ForegroundColor Red
        return
    }

    # Loeme faili sisu ja loendame vasted
    $read = Get-Content $tulemuse_fail
    $kogus = @($read | Where-Object { $_.Trim() -eq $Laiend }).Count

    if ($kogus -gt 0) {
        Write-Host "Laiendit '$Laiend' leiti failist $kogus korda." -ForegroundColor Cyan
    } else {
        Write-Host "Ei leitud (laiendi nimi: $Laiend)." -ForegroundColor Yellow
    }
}