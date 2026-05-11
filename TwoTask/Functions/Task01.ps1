function Task01 {
    $ext = @(Get-Content .\laiendid.txt -Encoding UTF8 | Where-Object { $_ })
    if (!$ext) { Write-Error "laiendid.txt puudub või on tühi"; return }
    $pick = $ext | Get-Random
    Add-Content .\random.txt $pick
    Write-Host "✓ $pick" -ForegroundColor Green
}